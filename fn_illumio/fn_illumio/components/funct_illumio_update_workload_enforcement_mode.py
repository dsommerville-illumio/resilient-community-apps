# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.workloads import Workload
from illumio.util import EnforcementMode

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_update_workload_enforcement_mode"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_update_workload_enforcement_mode'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Update the Enforcement Mode for one or more workloads.
        Inputs:
            -   fn_inputs.illumio_workload_hrefs
            -   fn_inputs.illumio_enforcement_mode
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        try:
            href_string = fn_inputs.illumio_workload_hrefs.strip()
            errors = []
            workload_hrefs = []

            if href_string:
                input_hrefs = fn_inputs.illumio_workload_hrefs.split(',')
                workloads = [Workload(href=href) for href in input_hrefs]
                enforcement_mode = EnforcementMode(fn_inputs.illumio_enforcement_mode.lower())

                yield self.status_message("Updating {} workloads to {} enforcement".format(len(input_hrefs), fn_inputs.illumio_enforcement_mode))

                illumio_helper = IllumioHelper(self.options)
                pce = illumio_helper.get_pce_instance()

                results = pce.update_workload_enforcement_modes(enforcement_mode, workloads)
                errors += results['errors']
                workload_hrefs += [workload.href for workload in results['workloads']]
            else:
                yield self.status_message("No workload HREFs provided")

            results = {'errors': errors, 'workloads': workload_hrefs}
            if results['errors']:
                yield self.status_message("Failed to update enforcement for one or more workloads; see errors for details.")
        except IllumioException as e:
            raise IntegrationError("Encountered an error while updating workload enforcement modes: {}".format(str(e)))

        yield self.status_message("Finished updating workload enforcement modes")
        yield FunctionResult(results)
