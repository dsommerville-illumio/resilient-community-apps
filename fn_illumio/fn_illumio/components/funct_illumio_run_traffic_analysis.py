# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult, handler
from resilient_lib import IntegrationError

from illumio.exceptions import IllumioException
from illumio.explorer import TrafficQuery
from illumio.policyobjects import ServicePort
from illumio.util import convert_protocol

from fn_illumio.util.helper import IllumioHelper

PACKAGE_NAME = "fn_illumio"
FN_NAME = "illumio_run_traffic_analysis"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'illumio_run_traffic_analysis'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @handler("reload")
    def _reload(self, event, opts):
        """Configuration options have changed, save new values"""
        self.options = opts.get(PACKAGE_NAME, {})

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Run an Explorer query to get a traffic analysis report based on the provided inputs.
        The query checks all sources and destinations for traffic on a given port/protocol. Returns up to 100,000 results.
        Inputs:
            -   fn_inputs.illumio_traffic_analysis_policy_decisions
            -   fn_inputs.illumio_protocol
            -   fn_inputs.illumio_traffic_analysis_end_time
            -   fn_inputs.illumio_traffic_analysis_start_time
            -   fn_inputs.illumio_port
        """

        yield self.status_message("Starting '{}' function".format(FN_NAME))

        try:
            illumio_helper = IllumioHelper(self.options)
            pce = illumio_helper.get_pce_instance()

            policy_decisions = fn_inputs.illumio_traffic_analysis_policy_decisions
            if isinstance(policy_decisions, str):
                policy_decisions = policy_decisions.split(',')

            proto = convert_protocol(fn_inputs.illumio_protocol)
            traffic_query = TrafficQuery.build(
                start_date=fn_inputs.illumio_traffic_analysis_start_time,
                end_date=fn_inputs.illumio_traffic_analysis_end_time,
                policy_decisions=policy_decisions,
                include_services=[ServicePort(port=fn_inputs.illumio_port, proto=proto)]
            )

            yield self.status_message("Running traffic query")

            traffic_flows = pce.get_traffic_flows_async(
                query_name='IBM_SOAR_block_port_traffic_query',
                traffic_query=traffic_query
            )
        except IllumioException as e:
            raise IntegrationError("Encountered an error running traffic query: {}".format(str(e)))

        yield self.status_message("Finished traffic query, found {} flows".format(len(traffic_flows)))

        results = {"traffic_flows": [flow.to_json() for flow in traffic_flows]}
        yield FunctionResult(results)
