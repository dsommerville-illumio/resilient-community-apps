# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for fn_illumio"""

import base64
import os
import io
try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition

RES_FILE = "data/export.res"


def codegen_reload_data():
    """
    Parameters required reload codegen for the fn_illumio package
    """
    return {
        "package": u"fn_illumio",
        "message_destinations": [u"illumio_message_queue"],
        "functions": [u"illumio_create_enforcement_boundary", u"illumio_create_ip_list", u"illumio_create_rule", u"illumio_create_ruleset", u"illumio_create_service_binding", u"illumio_create_virtual_service", u"illumio_get_ip_list", u"illumio_get_ip_lists", u"illumio_get_workload", u"illumio_get_workloads", u"illumio_provision_objects", u"illumio_run_traffic_analysis", u"illumio_update_workload_enforcement_mode"],
        "workflows": [u"illumio_block_port", u"illumio_block_selected_port"],
        "actions": [u"Illumio: Block Port", u"Illumio: Block Selected Port"],
        "incident_fields": [],
        "incident_artifact_types": [],
        "incident_types": [],
        "datatables": [u"illumio_traffic_flows"],
        "automatic_tasks": [],
        "scripts": []
    }


def customization_data(client=None):
    """
    Returns a Generator of ImportDefinitions (Customizations).
    Install them using `resilient-circuits customize`

    IBM Resilient Platform Version: 41.0.6783

    Contents:
    - Message Destinations:
        - illumio_message_queue
    - Functions:
        - illumio_create_enforcement_boundary
        - illumio_create_ip_list
        - illumio_create_rule
        - illumio_create_ruleset
        - illumio_create_service_binding
        - illumio_create_virtual_service
        - illumio_get_ip_list
        - illumio_get_ip_lists
        - illumio_get_workload
        - illumio_get_workloads
        - illumio_provision_objects
        - illumio_run_traffic_analysis
        - illumio_update_workload_enforcement_mode
    - Workflows:
        - illumio_block_port
        - illumio_block_selected_port
    - Rules:
        - Illumio: Block Port
        - Illumio: Block Selected Port
    - Data Tables:
        - illumio_traffic_flows
    """

    res_file = os.path.join(os.path.dirname(__file__), RES_FILE)
    if not os.path.isfile(res_file):
        raise FileNotFoundError("{} not found".format(RES_FILE))

    with io.open(res_file, mode='rt') as f:
        b64_data = base64.b64encode(f.read().encode('utf-8'))
        yield ImportDefinition(b64_data)