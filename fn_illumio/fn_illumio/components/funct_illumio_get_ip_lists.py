# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_get_ip_lists"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_get_ip_lists'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Get a collection of IP lists based on the provided parameters.
        Inputs:
            -   fn_inputs.illumio_ip_list_name
            -   fn_inputs.illumio_max_results
            -   fn_inputs.illumio_ip_list_ip_address
            -   fn_inputs.illumio_ip_list_fqdn
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        results = {'ip_lists': []}

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            params = {
                "name": getattr(fn_inputs, "illumio_ip_list_name", None),
                "ip_address": getattr(fn_inputs, "illumio_ip_list_ip_address", None),
                "fqdn": getattr(fn_inputs, "illumio_ip_list_fqdn", None),
                "max_results": getattr(fn_inputs, "illumio_max_results", None)
            }
            # remove any empty params
            params = illumio_helper.parse_params(params)
            yield self.status_message(str(params))

            ip_lists = pce.get_ip_lists(params=params)
            yield self.status_message("Found {} matching IP lists".format(len(ip_lists)))
            results['ip_lists'] = [ip_list.to_json() for ip_list in ip_lists if ip_list]
        except IllumioException as e:
            raise IntegrationError("Encountered an error while getting IP list: {}".format(str(e)))

        yield FunctionResult(results)
