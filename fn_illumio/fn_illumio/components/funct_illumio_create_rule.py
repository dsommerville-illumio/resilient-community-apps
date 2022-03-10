# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.rules import Rule
from illumio.util import ACTIVE, DRAFT

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_create_rule"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_create_rule'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Create a policy rule within a given ruleset.
        Inputs:
            -   fn_inputs.illumio_rule_consumers
            -   fn_inputs.illumio_ruleset_href
            -   fn_inputs.illumio_rule_providers
            -   fn_inputs.illumio_rule_resolve_consumers_as
            -   fn_inputs.illumio_rule_resolve_providers_as
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        rule = {}

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            consumers = self._to_list(fn_inputs.illumio_rule_consumers)
            providers = self._to_list(fn_inputs.illumio_rule_providers)

            resolve_consumers_as = self._to_list(fn_inputs.illumio_rule_resolve_consumers_as)
            resolve_providers_as = self._to_list(fn_inputs.illumio_rule_resolve_providers_as)

            ruleset_href = fn_inputs.illumio_ruleset_href

            yield self.status_message("Creating rule in ruleset '{}'".format(ruleset_href))
            rule = Rule.build(
                enabled=True, ingress_services=[],
                consumers=consumers, providers=providers,
                resolve_consumers_as=resolve_consumers_as,
                resolve_providers_as=resolve_providers_as
            )
            rule = pce.create_rule(ruleset_href=ruleset_href, rule=rule)
            yield self.status_message("Created rule with HREF '{}'".format(rule.href))

            rule = rule.to_json()
        except IllumioException as e:
            raise IntegrationError("Encountered an error while creating rule: {}".format(str(e)))

        yield FunctionResult(rule)

    def _to_list(self, param):
        if isinstance(param, list):
            return param
        elif isinstance(param, str):
            return param.split(',')
        return list(param)

