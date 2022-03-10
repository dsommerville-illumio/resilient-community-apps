# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from typing import List
from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.policyobjects import IPList, IPRange, FQDN

from fn_illumio.util.helper import IllumioHelper
PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_create_ip_list"

DEFAULT_IP_LIST_NAME = "IPL-IBM-SOAR"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_create_ip_list'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Create an IP List object.
        Inputs:
            -   fn_inputs.illumio_ip_list_name
            -   fn_inputs.illumio_ip_list_description
            -   fn_inputs.illumio_ip_list_ip_ranges
            -   fn_inputs.illumio_ip_list_fqdns
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        ip_list = {}

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            ip_list_name = getattr(fn_inputs, "illumio_ip_list_name", DEFAULT_IP_LIST_NAME)
            ip_list_description = getattr(fn_inputs, "illumio_ip_list_description", "")
            ip_ranges = getattr(fn_inputs, "illumio_ip_list_ip_ranges", "")
            fqdns = getattr(fn_inputs, "illumio_ip_list_fqdns", "")

            # if both fields are left blank, raise an error
            if not ip_ranges and not fqdns:
                raise IntegrationError("One or more FQDN or IP range entries must be provided when creating an IP list.")

            ip_ranges = self._parse_ip_ranges(fn_inputs.illumio_ip_list_ip_ranges)
            fqdns = self._parse_fqdns(fn_inputs.illumio_ip_list_fqdns)

            matching_ip_lists = pce.get_ip_lists(params={'name': ip_list_name})

            for ip_list_match in matching_ip_lists:
                if ip_list_match.name == ip_list_name:
                    ip_list = ip_list_match
                    yield self.status_message("Found existing IP list with name '{}'".format(ip_list_name))
                    break

            if not ip_list:
                yield self.status_message("No existing IP list with name '{}', creating...".format(ip_list_name))
                ip_list = IPList(
                    name=ip_list_name,
                    description=ip_list_description,
                    ip_ranges=ip_ranges,
                    fqdns=fqdns
                )
                ip_list = pce.create_ip_list(ip_list)
                yield self.status_message("Created IP list with HREF '{}'".format(ip_list.href))

            ip_list = ip_list.to_json()
        except IllumioException as e:
            raise IntegrationError("Encountered an error while creating IP list: {}".format(str(e)))

        yield FunctionResult(ip_list)

    def _parse_ip_ranges(self, ip_range_string: str) -> List[IPRange]:
        ip_ranges = [ip_range.strip() for ip_range in ip_range_string.split(',')]
        parsed_ip_ranges = []
        for ip_range in ip_ranges:
            if '-' in ip_range:
                from_ip, to_ip = ip_range.split('-')
            else:
                from_ip = ip_range
                to_ip = None
            parsed_ip_ranges.append(
                IPRange(
                    from_ip=from_ip,
                    to_ip=to_ip
                )
            )
        return parsed_ip_ranges

    def _parse_fqdns(self, fqdn_string: str) -> List[FQDN]:
        return [FQDN(fqdn=fqdn.strip()) for fqdn in fqdn_string.split(',')]
