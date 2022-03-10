# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.rules import EnforcementBoundary
from illumio.util import convert_protocol

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_create_enforcement_boundary"

DEFAULT_ENFORCEMENT_BOUNDARY_NAME = "EB-IBM-SOAR"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_create_enforcement_boundary'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Create an enforcement boundary with an ingress service using the given port/protocol.
        Inputs:
            -   fn_inputs.illumio_enforcement_boundary_name
            -   fn_inputs.illumio_enforcement_boundary_consumers
            -   fn_inputs.illumio_enforcement_boundary_providers
            -   fn_inputs.illumio_port
            -   fn_inputs.illumio_protocol
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        enforcement_boundary = {}

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            enforcement_boundary_name = getattr(fn_inputs, "illumio_enforcement_boundary_name", DEFAULT_ENFORCEMENT_BOUNDARY_NAME)
            consumers = fn_inputs.illumio_enforcement_boundary_consumers.split(',')
            providers = fn_inputs.illumio_enforcement_boundary_providers.split(',')
            port = fn_inputs.illumio_port
            protocol = convert_protocol(fn_inputs.illumio_protocol)

            matching_enforcement_boundaries = pce.get_enforcement_boundaries(params={'name': enforcement_boundary_name})

            for enforcement_boundary_match in matching_enforcement_boundaries:
                if enforcement_boundary_match.name == enforcement_boundary_name:
                    enforcement_boundary = enforcement_boundary_match
                    yield self.status_message("Found existing enforcement boundary with name '{}'".format(enforcement_boundary_name))
                    break

            if not enforcement_boundary:
                yield self.status_message("No existing enforcement boundary with name '{}', creating...".format(enforcement_boundary_name))
                enforcement_boundary = EnforcementBoundary.build(
                    name=enforcement_boundary_name,
                    consumers=consumers,
                    providers=providers,
                    ingress_services=[{'port': port, 'proto': protocol}]
                )
                enforcement_boundary = pce.create_enforcement_boundary(enforcement_boundary=enforcement_boundary)
                yield self.status_message("Created enforcement_boundary with HREF '{}'".format(enforcement_boundary.href))

            enforcement_boundary = enforcement_boundary.to_json()
        except IllumioException as e:
            raise IntegrationError("Encountered an error while creating enforcement boundary: {}".format(str(e)))
        yield FunctionResult(enforcement_boundary)
