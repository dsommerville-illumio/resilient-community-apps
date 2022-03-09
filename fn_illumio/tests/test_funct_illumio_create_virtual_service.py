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
FUNCTION_NAME = "illumio_create_virtual_service"

# Read the default configuration-data section from the package
# config_data = get_config_data(PACKAGE_NAME)
config_data = get_mock_config()

# Provide a simulation of the Resilient REST API (uncomment to connect to a real appliance)
resilient_mock = "pytest_resilient_circuits.BasicResilientMock"


def call_illumio_create_virtual_service_function(circuits, function_params, timeout=5):
    # Create the submitTestFunction event
    evt = SubmitTestFunction("illumio_create_virtual_service", function_params)

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
        event = circuits.watcher.wait("illumio_create_virtual_service_result", parent=evt, timeout=timeout)
        assert event
        assert isinstance(event.kwargs["result"], FunctionResult)
        pytest.wait_for(event, "complete", True)
        return event.kwargs["result"].value


class TestIllumioCreateVirtualService:
    """ Tests for the illumio_create_virtual_service function"""

    def test_function_definition(self):
        """ Test that the package provides customization_data that defines the function """
        func = get_function_definition(PACKAGE_NAME, FUNCTION_NAME)
        assert func is not None

    existing_virtual_service_inputs = {
        "illumio_virtual_service_name": "VS-IBM-SOAR-3389-TCP",
        "illumio_protocol": "tcp",
        "illumio_port": "3389"
    }
    new_virtual_service_inputs = {
        "illumio_virtual_service_name": "NEW-VIRTUAL-SERVICE",
        "illumio_protocol": "tcp",
        "illumio_port": "3389"
    }

    @patch('fn_illumio.components.funct_illumio_create_virtual_service.IllumioHelper.get_pce_instance', side_effect=mocked_policy_compute_engine)
    @pytest.mark.parametrize("mock_inputs, expected_results", [
        (existing_virtual_service_inputs, mock_results('virtual_service_existing')),
        (new_virtual_service_inputs, mock_results('virtual_service_created'))
    ])
    def test_success(self, mock_pce, circuits_app, mock_inputs, expected_results):
        """ Test calling with sample values for the parameters """
        results = call_illumio_create_virtual_service_function(circuits_app, mock_inputs)
        assert expected_results == results['content']

    @patch('fn_illumio.components.funct_illumio_create_virtual_service.IllumioHelper.get_pce_instance', side_effect=IllumioException)
    @pytest.mark.parametrize("mock_inputs", [(existing_virtual_service_inputs)])
    def test_thrown_exception(self, mock_pce, circuits_app, mock_inputs):
        with pytest.raises(IntegrationError):
            call_illumio_create_virtual_service_function(circuits_app, mock_inputs)
