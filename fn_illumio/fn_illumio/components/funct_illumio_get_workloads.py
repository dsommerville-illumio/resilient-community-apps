# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_get_workloads"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_get_workloads'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Get multiple workloads based on the given search criteria.
        Inputs:
            -   fn_inputs.illumio_workload_ip_address
            -   fn_inputs.illumio_workload_labels
            -   fn_inputs.illumio_workload_data_center_zone
            -   fn_inputs.illumio_workload_data_center
            -   fn_inputs.illumio_workload_name
            -   fn_inputs.illumio_workload_managed
            -   fn_inputs.illumio_workload_hostname
            -   fn_inputs.illumio_workload_online
            -   fn_inputs.illumio_workload_enforcement_mode
            -   fn_inputs.illumio_max_results
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        results = {'workloads': []}

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            params = {
                "ip_address": getattr(fn_inputs, "illumio_workload_ip_address", None),
                "labels": getattr(fn_inputs, "illumio_workload_labels", None),
                "data_center_zone": getattr(fn_inputs, "illumio_workload_data_center_zone", None),
                "data_center": getattr(fn_inputs, "illumio_workload_data_center", None),
                "name": getattr(fn_inputs, "illumio_workload_name", None),
                "managed": getattr(fn_inputs, "illumio_workload_managed", None),
                "hostname": getattr(fn_inputs, "illumio_workload_hostname", None),
                "online": getattr(fn_inputs, "illumio_workload_online", None),
                "enforcement_mode": getattr(fn_inputs, "illumio_workload_enforcement_mode", None),
                "max_results": getattr(fn_inputs, "illumio_max_results", None)
            }
            # remove any empty params
            params = illumio_helper.parse_params(params)
            yield self.status_message(str(params))

            workloads = pce.get_workloads(params=params)
            yield self.status_message("Found {} matching workloads".format(len(workloads)))
            results['workloads'] = [workload.to_json() for workload in workloads if workload]
        except IllumioException as e:
            raise IntegrationError("Encountered an error while getting workloads: {}".format(str(e)))

        yield FunctionResult(results)
