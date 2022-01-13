# -*- coding: utf-8 -*-

"""AppFunction implementation"""

import json

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.policyobjects import ServiceBinding
from illumio.util import IllumioEncoder, Reference

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_create_service_binding"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_create_service_binding'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Bind one or more workloads to an active virtual service. The virtual service must be created in draft and then provisioned for the call to work.
        Inputs:
            -   fn_inputs.illumio_virtual_service_href
            -   fn_inputs.illumio_workload_hrefs
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            href_string = fn_inputs.illumio_workload_hrefs.strip()

            if href_string:
                workload_hrefs = href_string.split(',')

                yield self.status_message("Creating service bindings for workloads:\n{}".format('\n'.join(workload_hrefs)))
                service_bindings = [
                    ServiceBinding(
                        virtual_service=Reference(href=fn_inputs.illumio_virtual_service_href),
                        workload=Reference(href=href)
                    )
                    for href in workload_hrefs
                ]

                results = pce.create_service_bindings(service_bindings)

                if results['errors']:
                    yield self.status_message("One or more bindings failed to create; see errors for details.")

                results = json.loads(json.dumps(results, cls=IllumioEncoder))  # convert the ServiceBinding objects
            else:
                yield self.status_message("No workloads passed to create service binding")
                results = {}
        except IllumioException as e:
            raise IntegrationError("Encountered an error while creating service bindings") from e

        yield self.status_message("Finished service binding creation")
        yield FunctionResult(results)
