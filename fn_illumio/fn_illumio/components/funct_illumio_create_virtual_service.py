# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.policyobjects import VirtualService, ServicePort
from illumio.util import convert_protocol

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_create_virtual_service"

DEFAULT_VIRTUAL_SERVICE_NAME = "VS-IBM-SOAR"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_create_virtual_service'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Create a Virtual Service.
        Inputs:
            -   fn_inputs.illumio_virtual_service_name
            -   fn_inputs.illumio_protocol
            -   fn_inputs.illumio_port
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        virtual_service = {}

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            virtual_service_name = getattr(fn_inputs, "illumio_virtual_service_name", DEFAULT_VIRTUAL_SERVICE_NAME)

            matching_virtual_services = pce.get_virtual_services(params={'name': virtual_service_name})

            for virtual_service_match in matching_virtual_services:
                if virtual_service_match.name == virtual_service_name:
                    virtual_service = virtual_service_match
                    yield self.status_message("Found existing virtual service with name '{}'".format(virtual_service_name))
                    break

            if not virtual_service:
                yield self.status_message("No existing virtual service with name '{}', creating...".format(virtual_service_name))
                virtual_service = VirtualService(
                    name=virtual_service_name,
                    service_ports=[
                        ServicePort(
                            port=int(fn_inputs.illumio_port),
                            proto=convert_protocol(fn_inputs.illumio_protocol)
                        )
                    ]
                )
                virtual_service = pce.create_virtual_service(virtual_service)
                yield self.status_message("Created virtual service with HREF '{}'".format(virtual_service.href))

            virtual_service = virtual_service.to_json()
        except IllumioException as e:
            raise IntegrationError("Encountered an error while creating virtual service: {}".format(str(e)))

        yield FunctionResult(virtual_service)
