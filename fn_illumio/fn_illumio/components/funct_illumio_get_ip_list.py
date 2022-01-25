# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_get_ip_list"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_get_ip_list'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Get an IP List object by name.
        Inputs:
            -   fn_inputs.illumio_ip_list_name
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))
        ip_list_name = fn_inputs.illumio_ip_list_name.strip()

        results = {}

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            ip_lists = pce.get_ip_lists_by_name(ip_list_name)
            if ip_lists:
                ip_list = ip_lists[0]
                yield self.status_message("Found IP list with HREF '{}'".format(ip_list.href))
                results = ip_list.to_json()
            else:
                yield self.status_message("No IP list found with name '{}'".format(ip_list_name))
        except IllumioException as e:
            raise IntegrationError("Encountered an error while getting IP list: {}".format(str(e)))

        yield FunctionResult(results)
