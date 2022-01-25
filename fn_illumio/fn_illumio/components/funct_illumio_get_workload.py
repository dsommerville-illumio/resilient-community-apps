# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_get_workload"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_get_workload'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Get a workload by HREF.
        Inputs:
            -   fn_inputs.illumio_workload_href
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))
        workload_href = fn_inputs.illumio_workload_href.strip()

        results = {}

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            workload = pce.get_workload(workload_href)
            if workload:
                results = workload.to_json()
            else:
                yield self.status_message("No workload found with HREF '{}'".format(workload_href))
        except IllumioException as e:
            raise IntegrationError("Encountered an error while getting workload: {}".format(str(e)))

        yield FunctionResult(results)
