# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.rules import Ruleset

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_create_ruleset"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_create_ruleset'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Create a ruleset security policy object.
        Inputs:
            -   fn_inputs.illumio_ruleset_name
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            ruleset_name = fn_inputs.illumio_ruleset_name

            rulesets = pce.get_rulesets_by_name(ruleset_name)
            if rulesets:
                ruleset = rulesets[0]
                yield self.status_message("Found existing ruleset with name '{}'".format(ruleset_name))
            else:
                yield self.status_message("No existing ruleset exists with name '{}', creating...".format(ruleset_name))
                ruleset = pce.create_ruleset(ruleset=Ruleset(name=ruleset_name))
                yield self.status_message("Created ruleset with HREF '{}'".format(ruleset.href))
        except IllumioException as e:
            raise IntegrationError("Encountered an error while creating ruleset: {}".format(str(e)))

        yield FunctionResult(ruleset.to_json())
