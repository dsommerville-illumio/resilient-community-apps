# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.util import ACTIVE, convert_draft_href_to_active

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_provision_objects"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_provision_objects'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Provision draft policy changes for the given security policy objects.
        Inputs:
            -   fn_inputs.illumio_policy_object_hrefs
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            provisioned_hrefs = []

            hrefs = fn_inputs.illumio_policy_object_hrefs.split(',')
            for href in list(hrefs):
                if '/{}/'.format(ACTIVE) in href:
                    yield self.status_message("HREF '{}' is already active, skipping.".format(href))
                    hrefs.remove(href)

            if hrefs:
                yield self.status_message("Provisioning objects...")
                pce.provision_policy_changes(change_description="IBM SOAR object provisioning", hrefs=hrefs)

                provisioned_hrefs += [convert_draft_href_to_active(href) for href in hrefs]
            else:
                yield self.status_message("No draft objects were passed to provision")
        except IllumioException as e:
            raise IntegrationError("Encountered an error provisioning objects: {}".format(str(e)))

        yield self.status_message("Finished policy object provisioning")
        yield FunctionResult({"provisioned_hrefs": provisioned_hrefs})
