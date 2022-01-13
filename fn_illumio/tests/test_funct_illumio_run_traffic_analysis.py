# -*- coding: utf-8 -*-
"""Tests using pytest_resilient_circuits"""

import pytest
from mock import patch
from resilient_circuits.util import get_function_definition
from resilient_circuits import SubmitTestFunction, FunctionResult
from resilient_lib import IntegrationError

from illumio import IllumioException

from .mock_functions import mocked_policy_compute_engine, mock_results, get_mock_config

PACKAGE_NAME = "fn_illumio"
FUNCTION_NAME = "illumio_run_traffic_analysis"

# Read the default configuration-data section from the package
# config_data = get_config_data(PACKAGE_NAME)
config_data = get_mock_config()

# Provide a simulation of the Resilient REST API (uncomment to connect to a real appliance)
resilient_mock = "pytest_resilient_circuits.BasicResilientMock"


def call_illumio_run_traffic_analysis_function(circuits, function_params, timeout=5):
    # Create the submitTestFunction event
    evt = SubmitTestFunction("illumio_run_traffic_analysis", function_params)

    # Fire a message to the function
    circuits.manager.fire(evt)

    # circuits will fire an "exception" event if an exception is raised in the FunctionComponent
    # return this exception if it is raised
    exception_event = circuits.watcher.wait("exception", parent=None, timeout=timeout)

    if exception_event is not False:
        exception = exception_event.args[1]
        raise exception

    # else return the FunctionComponent's results
    else:
        event = circuits.watcher.wait("illumio_run_traffic_analysis_result", parent=evt, timeout=timeout)
        assert event
        assert isinstance(event.kwargs["result"], FunctionResult)
        pytest.wait_for(event, "complete", True)
        return event.kwargs["result"].value


class TestIllumioRunTrafficAnalysis:
    """ Tests for the illumio_run_traffic_analysis function"""

    def test_function_definition(self):
        """ Test that the package provides customization_data that defines the function """
        func = get_function_definition(PACKAGE_NAME, FUNCTION_NAME)
        assert func is not None

    traffic_analysis_inputs = {
        "illumio_port": 3389,
        "illumio_traffic_analysis_end_time": 1639083546851,
        "illumio_traffic_analysis_policy_decisions": "potentially_blocked",
        "illumio_protocol": "TCP",
        "illumio_traffic_analysis_start_time": 1639688368426
    }
    empty_traffic_analysis_inputs = {
        "illumio_port": 1234,
        "illumio_traffic_analysis_end_time": 1639083546851,
        "illumio_traffic_analysis_policy_decisions": "potentially_blocked",
        "illumio_protocol": "TCP",
        "illumio_traffic_analysis_start_time": 1639688368426
    }

    @patch('fn_illumio.components.funct_illumio_run_traffic_analysis.IllumioHelper.get_pce_instance', side_effect=mocked_policy_compute_engine)
    @pytest.mark.parametrize("mock_inputs, expected_results", [
        (traffic_analysis_inputs, mock_results('traffic_flows_matching')),
        (empty_traffic_analysis_inputs, [])
    ])
    def test_success(self, mock_pce, circuits_app, mock_inputs, expected_results):
        """ Test calling with sample values for the parameters """
        results = call_illumio_run_traffic_analysis_function(circuits_app, mock_inputs)
        assert expected_results == results['content']['traffic_flows']

    @patch('fn_illumio.components.funct_illumio_run_traffic_analysis.IllumioHelper.get_pce_instance', side_effect=mocked_policy_compute_engine)
    def test_invalid_inputs(self, mock_pce, circuits_app):
        with pytest.raises(AttributeError):
            call_illumio_run_traffic_analysis_function(circuits_app, {})

    @patch('fn_illumio.components.funct_illumio_run_traffic_analysis.IllumioHelper.get_pce_instance', side_effect=IllumioException)
    @pytest.mark.parametrize("mock_inputs", [(traffic_analysis_inputs)])
    def test_thrown_exception(self, mock_pce, circuits_app, mock_inputs):
        with pytest.raises(IntegrationError):
            call_illumio_run_traffic_analysis_function(circuits_app, mock_inputs)
