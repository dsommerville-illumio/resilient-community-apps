{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "incident.incident_type_ids",
          "method": "equals",
          "type": null,
          "value": [
            "Malware"
          ]
        }
      ],
      "enabled": true,
      "export_key": "Illumio: Block Port",
      "id": 21,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Illumio: Block Port",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "25ef3258-e4b2-46a3-8a01-e6be2279f4d3",
      "view_items": [
        {
          "content": "8b6fa54c-61c9-4374-ad2c-a5cae3e84e9a",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "dfcf7891-6988-4433-8a6e-9b90085dcb6b",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "968d951c-3997-4282-ae66-24a147e3ddde",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "0d8125f0-dbcc-43a6-a10e-91d961176c59",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "60ab9466-7c9e-4f18-b111-8c8782113505",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "7672b7dd-97f0-43e0-988f-7688253ef201",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "illumio_block_port"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "Port"
        }
      ],
      "enabled": true,
      "export_key": "Illumio: Block Selected Port",
      "id": 24,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Illumio: Block Selected Port",
      "object_type": "artifact",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "e2dd83f0-0ef5-4bf4-b12f-5430d12440df",
      "view_items": [
        {
          "content": "dfcf7891-6988-4433-8a6e-9b90085dcb6b",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "968d951c-3997-4282-ae66-24a147e3ddde",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "0d8125f0-dbcc-43a6-a10e-91d961176c59",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "60ab9466-7c9e-4f18-b111-8c8782113505",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "7672b7dd-97f0-43e0-988f-7688253ef201",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "illumio_block_selected_port"
      ]
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1646890671120,
  "export_format_version": 2,
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ip_list_ip_address",
      "hide_notification": false,
      "id": 867,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ip_list_ip_address",
      "operation_perms": {},
      "operations": [],
      "placeholder": "127.0.0.1",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "illumio_ip_list_ip_address",
      "tooltip": "Search for IP lists matching the given address. Supports partial matches.",
      "type_id": 11,
      "uuid": "84a34403-4d47-4747-9817-db73c4eec3e2",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_hostname",
      "hide_notification": false,
      "id": 304,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_hostname",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_hostname",
      "tooltip": "The hostname of the workload to search for.",
      "type_id": 11,
      "uuid": "ac601a0b-89fd-4df1-8060-37fef1fb0210",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_enforcement_boundary_consumers",
      "hide_notification": false,
      "id": 305,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_enforcement_boundary_consumers",
      "operation_perms": {},
      "operations": [],
      "placeholder": "ams",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_enforcement_boundary_consumers",
      "tooltip": "Comma-separated list of HREFs of entities to be used as consumers for the rule, or \"ams\" for all workloads",
      "type_id": 11,
      "uuid": "ad267e5c-48b7-4a4c-8bf3-05c62ea05a48",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ruleset_name",
      "hide_notification": false,
      "id": 306,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ruleset_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "RS-IBM-SOAR",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_ruleset_name",
      "tooltip": "Ruleset display name",
      "type_id": 11,
      "uuid": "b7769f1f-ff0d-4934-b3da-6bb412ec1c60",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ip_list_fqdn",
      "hide_notification": false,
      "id": 866,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ip_list_fqdn",
      "operation_perms": {},
      "operations": [],
      "placeholder": "www.example.com",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "illumio_ip_list_fqdn",
      "tooltip": "IP list FQDN. Supports partial matches.",
      "type_id": 11,
      "uuid": "bd30b155-c0c9-4bbf-a29b-6899297bae57",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_rule_resolve_consumers_as",
      "hide_notification": false,
      "id": 307,
      "input_type": "multiselect",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_rule_resolve_consumers_as",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_rule_resolve_consumers_as",
      "tooltip": "Consumer objects the rule should apply to",
      "type_id": 11,
      "uuid": "bd455988-dc7a-4a0e-9bba-a2ec1effd7c9",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "workloads",
          "properties": null,
          "uuid": "2b9260ec-3a80-4020-a107-4805534202c2",
          "value": 152
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "virtual_services",
          "properties": null,
          "uuid": "2484dc6c-bc62-46b3-a9dc-d317387a9d25",
          "value": 153
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_traffic_analysis_start_time",
      "hide_notification": false,
      "id": 253,
      "input_type": "datetimepicker",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_traffic_analysis_start_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_traffic_analysis_start_time",
      "tooltip": "Start of the query time range",
      "type_id": 11,
      "uuid": "c206b828-3ae4-428a-8e8a-1f68f63be937",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_online",
      "hide_notification": false,
      "id": 308,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_online",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_online",
      "tooltip": "If set, returns only online workloads if true or offline workloads if false.",
      "type_id": 11,
      "uuid": "c614ef19-8ba2-4f6f-a33f-c2c944671627",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": true,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_enforcement_mode",
      "hide_notification": false,
      "id": 309,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_enforcement_mode",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_enforcement_mode",
      "tooltip": "Search for workloads based on enforcement mode.",
      "type_id": 11,
      "uuid": "d0d874a9-185d-42cc-8d83-f63ff7ab276b",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "idle",
          "properties": null,
          "uuid": "8076706f-48aa-4312-97de-4a87cc0bb18a",
          "value": 154
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "visibility_only",
          "properties": null,
          "uuid": "b278f8a6-47c6-4fc8-8293-6ddbbcc20e52",
          "value": 155
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "selective",
          "properties": null,
          "uuid": "da38172d-248c-43df-a2df-9f5a0ec377d3",
          "value": 156
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "full",
          "properties": null,
          "uuid": "03019de1-e825-4452-a3f5-5b02c368f867",
          "value": 157
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ip_list_fqdns",
      "hide_notification": false,
      "id": 871,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ip_list_fqdns",
      "operation_perms": {},
      "operations": [],
      "placeholder": "example1.com,example2.com",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "illumio_ip_list_fqdns",
      "tooltip": "Comma-separated list of FQDNs to add to the created IP list.",
      "type_id": 11,
      "uuid": "e25f9ae9-bfa5-495a-b97d-2a145f950bca",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ip_list_href",
      "hide_notification": false,
      "id": 869,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ip_list_href",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "illumio_ip_list_href",
      "tooltip": "IP list object reference key.",
      "type_id": 11,
      "uuid": "e450fa96-8f4c-4e30-92be-247e6236a901",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_rule_resolve_providers_as",
      "hide_notification": false,
      "id": 310,
      "input_type": "multiselect",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_rule_resolve_providers_as",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_rule_resolve_providers_as",
      "tooltip": "Provider objects the rule should apply to",
      "type_id": 11,
      "uuid": "e7c7f51e-1e92-4629-bea4-f94c5efbdedc",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "workloads",
          "properties": null,
          "uuid": "b1bcada6-6bd5-4a45-b1ca-a241f852f989",
          "value": 158
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "virtual_services",
          "properties": null,
          "uuid": "0c9f3f74-62c2-4d54-96b1-a26dc745a95b",
          "value": 159
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_hrefs",
      "hide_notification": false,
      "id": 311,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_hrefs",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_hrefs",
      "tooltip": "Comma-separated string of workload HREF values",
      "type_id": 11,
      "uuid": "e87d6be7-b10b-44f3-a127-5142cba80f55",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_enforcement_mode",
      "hide_notification": false,
      "id": 312,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_enforcement_mode",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_enforcement_mode",
      "tooltip": "Workload enforcement mode",
      "type_id": 11,
      "uuid": "f192318b-ea83-44bd-9f93-74ea87db9bea",
      "values": [
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "idle",
          "properties": null,
          "uuid": "ec96de15-5d16-4e6e-9378-ac50f72c08a8",
          "value": 160
        },
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "visibility_only",
          "properties": null,
          "uuid": "a054a262-911f-48b4-92cd-cc857565c397",
          "value": 161
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "selective",
          "properties": null,
          "uuid": "5734efbc-38b8-42df-8880-cd137acaacac",
          "value": 162
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "full",
          "properties": null,
          "uuid": "fb5d7f1e-c85c-4ed1-9cfa-4a7930e62bd2",
          "value": 163
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_enforcement_boundary_providers",
      "hide_notification": false,
      "id": 313,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_enforcement_boundary_providers",
      "operation_perms": {},
      "operations": [],
      "placeholder": "ams",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_enforcement_boundary_providers",
      "tooltip": "Comma-separated list of HREFs of entities to be used as providers for the rule, or \"ams\" for all workloads",
      "type_id": 11,
      "uuid": "fb884927-fa6d-44a9-9065-a1b37e0a14ce",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_port",
      "hide_notification": false,
      "id": 250,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_port",
      "operation_perms": {},
      "operations": [],
      "placeholder": "8080",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_port",
      "tooltip": "Port number",
      "type_id": 11,
      "uuid": "ffe384a7-acf9-49f0-afed-eb7a3c0350fe",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_virtual_service_name",
      "hide_notification": false,
      "id": 314,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_virtual_service_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "VS-IBM-SOAR",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_virtual_service_name",
      "tooltip": "Virtual service name. If no value is set, use the value SOAR-{port}-{protocol}",
      "type_id": 11,
      "uuid": "0a285607-f172-4d79-aafe-32d4c09752a8",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ip_list_description",
      "hide_notification": false,
      "id": 870,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ip_list_description",
      "operation_perms": {},
      "operations": [],
      "placeholder": "IP list created through IBM SOAR.",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "illumio_ip_list_description",
      "tooltip": "Description of IP list object to create.",
      "type_id": 11,
      "uuid": "0a7ef9e4-3466-485e-affe-2462c536f539",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_href",
      "hide_notification": false,
      "id": 315,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_href",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_href",
      "tooltip": "Workload object reference key",
      "type_id": 11,
      "uuid": "0b4eb69c-22c0-4fbd-8640-55ced4388bc7",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_rule_consumers",
      "hide_notification": false,
      "id": 316,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_rule_consumers",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_rule_consumers",
      "tooltip": "Comma-separated list of HREFs of entities to be used as consumers",
      "type_id": 11,
      "uuid": "0e5636ae-6d52-469d-a1a6-ea2a1e14e6a4",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ip_list_name",
      "hide_notification": false,
      "id": 317,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ip_list_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "Any (0.0.0.0/0 and ::/0)",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_ip_list_name",
      "tooltip": "IP list object name. When creating an IP list, defaults to IPL-IBM-SOAR.",
      "type_id": 11,
      "uuid": "122502d6-cefb-4d15-b6c6-bb6bee514cad",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_policy_object_hrefs",
      "hide_notification": false,
      "id": 318,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_policy_object_hrefs",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_policy_object_hrefs",
      "tooltip": "Comma-separated list of policy object HREFs",
      "type_id": 11,
      "uuid": "17125777-7012-4db2-bfa7-3934cd69836e",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_ip_address",
      "hide_notification": false,
      "id": 319,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_ip_address",
      "operation_perms": {},
      "operations": [],
      "placeholder": "127.0.0.1",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_ip_address",
      "tooltip": "The IP address of the workload to search for. Supports partial matches.",
      "type_id": 11,
      "uuid": "19f4a49c-407a-45b0-af3c-30757874ccc7",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_traffic_analysis_policy_decisions",
      "hide_notification": false,
      "id": 255,
      "input_type": "multiselect",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_traffic_analysis_policy_decisions",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_traffic_analysis_policy_decisions",
      "tooltip": "List of policy decisions to include in the search results",
      "type_id": 11,
      "uuid": "1f10ccab-e7ab-432e-aeb8-cbbcde1a995a",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "potentially_blocked",
          "properties": null,
          "uuid": "8fd972ff-ccf5-4b73-8532-17d0ec238f46",
          "value": 54
        },
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "unknown",
          "properties": null,
          "uuid": "36e5cea7-e130-49d5-bb50-3aa59d54537a",
          "value": 55
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "allowed",
          "properties": null,
          "uuid": "c96e53b8-056a-428a-9e6f-21ad24351c52",
          "value": 56
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "blocked",
          "properties": null,
          "uuid": "3b115ad5-4f97-4301-a8d0-f527a67a872c",
          "value": 57
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ruleset_href",
      "hide_notification": false,
      "id": 320,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ruleset_href",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_ruleset_href",
      "tooltip": "Ruleset object reference key",
      "type_id": 11,
      "uuid": "25528664-9ccb-4b6a-a187-4998f73e1f9e",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_labels",
      "hide_notification": false,
      "id": 321,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_labels",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_labels",
      "tooltip": "Search for workloads based on a comma-separated list of Label HREFs.",
      "type_id": 11,
      "uuid": "2720e0e9-6d6d-4517-8d2b-8f36abc8a5e2",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_max_results",
      "hide_notification": false,
      "id": 868,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_max_results",
      "operation_perms": {},
      "operations": [],
      "placeholder": "500",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "illumio_max_results",
      "tooltip": "Limit the maximum number of results returned by the query.",
      "type_id": 11,
      "uuid": "28911ea5-d2b7-4038-9300-3929fc7d278e",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_ip_list_ip_ranges",
      "hide_notification": false,
      "id": 872,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_ip_list_ip_ranges",
      "operation_perms": {},
      "operations": [],
      "placeholder": "127.0.0.1,10.0.0.0/8,172.168.0.2-172.168.0.12",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "illumio_ip_list_ip_ranges",
      "tooltip": "Comma-separated list of IP addresses or ranges to include in the created IP list. The values can be single IPs, CIDR format, or hyphenated start-end ranges.",
      "type_id": 11,
      "uuid": "2b537d0d-4ac6-43ab-be3c-2d4a65d4c418",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_protocol",
      "hide_notification": false,
      "id": 251,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_protocol",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_protocol",
      "tooltip": "Communication protocol",
      "type_id": 11,
      "uuid": "2f0081a0-12a1-46a4-aa86-5ec9b5c7c003",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "TCP",
          "properties": null,
          "uuid": "bdc5eb6e-1190-43e4-9002-66857d8961db",
          "value": 52
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "UDP",
          "properties": null,
          "uuid": "4b48084c-800d-4258-b7ab-d29b90d82830",
          "value": 53
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_rule_providers",
      "hide_notification": false,
      "id": 322,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_rule_providers",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_rule_providers",
      "tooltip": "Comma-separated list of HREFs of entities to be used as providers",
      "type_id": 11,
      "uuid": "3adfb854-0b9c-4b3d-bf6d-b2fc112d4544",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_virtual_service_href",
      "hide_notification": false,
      "id": 323,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_virtual_service_href",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_virtual_service_href",
      "tooltip": "Virtual Service object reference key",
      "type_id": 11,
      "uuid": "409df56b-ef4d-4f9d-878d-7e4a02a3f125",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_traffic_analysis_end_time",
      "hide_notification": false,
      "id": 254,
      "input_type": "datetimepicker",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_traffic_analysis_end_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_traffic_analysis_end_time",
      "tooltip": "End of the query time range",
      "type_id": 11,
      "uuid": "673c7ecc-5274-4bd4-a6d9-ab5c6e8f9c44",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_name",
      "hide_notification": false,
      "id": 324,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_name",
      "tooltip": "The name of the workload(s) to search for. Supports partial matches.",
      "type_id": 11,
      "uuid": "76c81049-1756-4dc0-8271-ea96a17a1547",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_enforcement_boundary_name",
      "hide_notification": false,
      "id": 325,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_enforcement_boundary_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "EB-IBM-SOAR",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_enforcement_boundary_name",
      "tooltip": "Enforcement boundary name",
      "type_id": 11,
      "uuid": "77793e0f-ceae-4a95-9e09-2606bdaa0fc6",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/illumio_workload_managed",
      "hide_notification": false,
      "id": 326,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_workload_managed",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "illumio_workload_managed",
      "tooltip": "If set, returns only managed workloads if true, or unmanaged workloads if false.",
      "type_id": 11,
      "uuid": "7f8498ff-740e-448c-b432-5d35cf81e6a6",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/illumio_port",
      "hide_notification": false,
      "id": 272,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_port",
      "operation_perms": {},
      "operations": [],
      "placeholder": "8080",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "Port",
      "tooltip": "Port number to block.",
      "type_id": 6,
      "uuid": "8b6fa54c-61c9-4374-ad2c-a5cae3e84e9a",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": true,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/illumio_block_port_update_enforcement",
      "hide_notification": false,
      "id": 302,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_block_port_update_enforcement",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "Update Enforcement",
      "tooltip": "If checked, all managed workloads currently in visibility only mode will be moved into selective enforcement.",
      "type_id": 6,
      "uuid": "968d951c-3997-4282-ae66-24a147e3ddde",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/illumio_protocol",
      "hide_notification": false,
      "id": 273,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_protocol",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "Protocol",
      "tooltip": "Protocol to block on given port.",
      "type_id": 6,
      "uuid": "dfcf7891-6988-4433-8a6e-9b90085dcb6b",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "TCP",
          "properties": null,
          "uuid": "5bb999fa-fa44-432a-99e8-7476092a5869",
          "value": 102
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "UDP",
          "properties": null,
          "uuid": "94b067fe-d5da-427e-8333-618c639632ad",
          "value": 103
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": true,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/illumio_block_port_create_allow_list",
      "hide_notification": false,
      "id": 303,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_block_port_create_allow_list",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "Create Allow List",
      "tooltip": "If checked, the workflow will create a policy objects and rules to allow traffic flows on the blocked port. The flows are discovered by a traffic analysis query run against the specified time-frame.",
      "type_id": 6,
      "uuid": "0d8125f0-dbcc-43a6-a10e-91d961176c59",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/illumio_block_port_traffic_analysis_start_time",
      "hide_notification": false,
      "id": 281,
      "input_type": "datetimepicker",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_block_port_traffic_analysis_start_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "Traffic Analysis Start Time",
      "tooltip": "Traffic analysis query start time for discovering legitimate traffic flows on the blocked port. The start and end times should be before the ransomware entered the network.",
      "type_id": 6,
      "uuid": "60ab9466-7c9e-4f18-b111-8c8782113505",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/illumio_block_port_traffic_analysis_end_time",
      "hide_notification": false,
      "id": 292,
      "input_type": "datetimepicker",
      "internal": false,
      "is_tracked": false,
      "name": "illumio_block_port_traffic_analysis_end_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "templates": [],
      "text": "Traffic Analysis End Time",
      "tooltip": "Traffic analysis query end time for discovering legitimate traffic flows on the blocked port. The start and end times should be before the ransomware entered the network.",
      "type_id": 6,
      "uuid": "7672b7dd-97f0-43e0-988f-7688253ef201",
      "values": []
    },
    {
      "export_key": "incident/internal_customizations_field",
      "id": 0,
      "input_type": "text",
      "internal": true,
      "name": "internal_customizations_field",
      "read_only": true,
      "text": "Customizations Field (internal)",
      "type_id": 0,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"
    }
  ],
  "functions": [
    {
      "created_date": 1642088590282,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Create an enforcement boundary with an ingress service using the given port/protocol.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Create Enforcement Boundary",
      "export_key": "illumio_create_enforcement_boundary",
      "id": 13,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1645557167600,
      "name": "illumio_create_enforcement_boundary",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"href\": \"/orgs/1/sec_policy/active/enforcement_boundaries/1019\", \"name\": \"EB-IBM-SOAR-3389-TCP\", \"created_at\": \"2022-01-07T16:17:25.515Z\", \"updated_at\": \"2022-01-07T16:17:25.526Z\", \"created_by\": {\"href\": \"/users/464\"}, \"updated_by\": {\"href\": \"/users/464\"}, \"caps\": [\"write\", \"provision\"], \"ingress_services\": [{\"port\": 3389, \"proto\": 6}], \"providers\": [{\"actors\": \"ams\"}], \"consumers\": [{\"ip_list\": {\"href\": \"/orgs/1/sec_policy/active/ip_lists/1334\"}}]}, \"raw\": null, \"inputs\": {\"illumio_protocol\": \"TCP\", \"illumio_enforcement_boundary_providers\": \"ams\", \"illumio_enforcement_boundary_name\": \"EB-IBM-SOAR-3389-TCP\", \"illumio_port\": 3389, \"illumio_enforcement_boundary_consumers\": \"/orgs/1/sec_policy/active/ip_lists/1334\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 604, \"timestamp\": \"2022-01-07 11:41:47\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"name\": {\"type\": \"string\"}, \"created_at\": {\"type\": \"string\"}, \"updated_at\": {\"type\": \"string\"}, \"update_type\": {\"type\": \"string\"}, \"created_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"updated_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"caps\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"ingress_services\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"port\": {\"type\": \"integer\"}, \"proto\": {\"type\": \"integer\"}}}}, \"providers\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"actors\": {\"type\": \"string\"}}}}, \"consumers\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"ip_list\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}}}}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_protocol\": {\"type\": \"string\"}, \"illumio_enforcement_boundary_providers\": {\"type\": \"string\"}, \"illumio_enforcement_boundary_name\": {\"type\": \"string\"}, \"illumio_port\": {\"type\": \"integer\"}, \"illumio_enforcement_boundary_consumers\": {\"type\": \"string\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "d4a92760-7580-4670-8ff9-d9c87a07217d",
      "version": 2,
      "view_items": [
        {
          "content": "ffe384a7-acf9-49f0-afed-eb7a3c0350fe",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "2f0081a0-12a1-46a4-aa86-5ec9b5c7c003",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "77793e0f-ceae-4a95-9e09-2606bdaa0fc6",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "ad267e5c-48b7-4a4c-8bf3-05c62ea05a48",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "fb884927-fa6d-44a9-9065-a1b37e0a14ce",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1646858466406,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Create an IP List object.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Create IP List",
      "export_key": "illumio_create_ip_list",
      "id": 35,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1646858466440,
      "name": "illumio_create_ip_list",
      "tags": [],
      "uuid": "475812ec-299b-42b4-a3b0-0fb22aa011bb",
      "version": 1,
      "view_items": [
        {
          "content": "122502d6-cefb-4d15-b6c6-bb6bee514cad",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "0a7ef9e4-3466-485e-affe-2462c536f539",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "e25f9ae9-bfa5-495a-b97d-2a145f950bca",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "2b537d0d-4ac6-43ab-be3c-2d4a65d4c418",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": []
    },
    {
      "created_date": 1642088590347,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Create a policy rule within a given ruleset.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Create Rule",
      "export_key": "illumio_create_rule",
      "id": 14,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1645557167630,
      "name": "illumio_create_rule",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"href\": \"/orgs/1/sec_policy/draft/rule_sets/11110/sec_rules/18665\", \"created_at\": \"2022-01-07T16:41:42.244Z\", \"updated_at\": \"2022-01-07T16:41:42.255Z\", \"update_type\": \"create\", \"created_by\": {\"href\": \"/users/464\"}, \"updated_by\": {\"href\": \"/users/464\"}, \"ingress_services\": [], \"providers\": [{\"virtual_service\": {\"href\": \"/orgs/1/sec_policy/draft/virtual_services/575f43f4-3f99-4bb0-8a6f-9e2da7a9fbd2\"}}], \"consumers\": [{\"ip_list\": {\"href\": \"/orgs/1/sec_policy/draft/ip_lists/1334\"}}], \"enabled\": true, \"resolve_labels_as\": {\"providers\": [\"virtual_services\"], \"consumers\": [\"workloads\"]}, \"sec_connect\": false, \"stateless\": false, \"machine_auth\": false, \"unscoped_consumers\": false, \"network_type\": \"brn\"}, \"raw\": null, \"inputs\": {\"illumio_rule_resolve_consumers_as\": [\"workloads\"], \"illumio_rule_consumers\": \"/orgs/1/sec_policy/active/ip_lists/1334\", \"illumio_ruleset_href\": \"/orgs/1/sec_policy/draft/rule_sets/11110\", \"illumio_rule_resolve_providers_as\": [\"virtual_services\"], \"illumio_rule_providers\": \"/orgs/1/sec_policy/active/virtual_services/575f43f4-3f99-4bb0-8a6f-9e2da7a9fbd2\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 457, \"timestamp\": \"2022-01-07 11:41:42\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"created_at\": {\"type\": \"string\"}, \"updated_at\": {\"type\": \"string\"}, \"update_type\": {\"type\": \"string\"}, \"created_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"updated_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"ingress_services\": {\"type\": \"array\"}, \"providers\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"virtual_service\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}}}}, \"consumers\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"ip_list\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}}}}, \"enabled\": {\"type\": \"boolean\"}, \"resolve_labels_as\": {\"type\": \"object\", \"properties\": {\"providers\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"consumers\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}}}, \"sec_connect\": {\"type\": \"boolean\"}, \"stateless\": {\"type\": \"boolean\"}, \"machine_auth\": {\"type\": \"boolean\"}, \"unscoped_consumers\": {\"type\": \"boolean\"}, \"network_type\": {\"type\": \"string\"}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_rule_resolve_consumers_as\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"illumio_rule_consumers\": {\"type\": \"string\"}, \"illumio_ruleset_href\": {\"type\": \"string\"}, \"illumio_rule_resolve_providers_as\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"illumio_rule_providers\": {\"type\": \"string\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "0b04d470-8d93-412c-ae3a-a82702477ba9",
      "version": 2,
      "view_items": [
        {
          "content": "25528664-9ccb-4b6a-a187-4998f73e1f9e",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "0e5636ae-6d52-469d-a1a6-ea2a1e14e6a4",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "3adfb854-0b9c-4b3d-bf6d-b2fc112d4544",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "bd455988-dc7a-4a0e-9bba-a2ec1effd7c9",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "e7c7f51e-1e92-4629-bea4-f94c5efbdedc",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1642088590401,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Create a Ruleset object.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Create Ruleset",
      "export_key": "illumio_create_ruleset",
      "id": 15,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1646858519057,
      "name": "illumio_create_ruleset",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"href\": \"/orgs/1/sec_policy/draft/rule_sets/11110\", \"name\": \"RS-IBM-SOAR-3389-TCP\", \"created_at\": \"2022-01-07T15:23:25.411Z\", \"updated_at\": \"2022-01-07T15:23:25.411Z\", \"update_type\": \"create\", \"created_by\": {\"href\": \"/users/464\"}, \"updated_by\": {\"href\": \"/users/464\"}, \"caps\": [\"write\", \"provision\"], \"enabled\": true, \"scopes\": [[]]}, \"raw\": null, \"inputs\": {\"illumio_ruleset_name\": \"RS-IBM-SOAR-3389-TCP\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 780, \"timestamp\": \"2022-01-07 10:23:25\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"name\": {\"type\": \"string\"}, \"created_at\": {\"type\": \"string\"}, \"updated_at\": {\"type\": \"string\"}, \"update_type\": {\"type\": \"string\"}, \"created_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"updated_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"caps\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"enabled\": {\"type\": \"boolean\"}, \"scopes\": {\"type\": \"array\", \"items\": {\"type\": \"array\"}}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_ruleset_name\": {\"type\": \"string\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "670ee399-82a6-4b3b-b306-21be548c9206",
      "version": 3,
      "view_items": [
        {
          "content": "b7769f1f-ff0d-4934-b3da-6bb412ec1c60",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1642088590451,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Bind one or more workloads to an active virtual service. The virtual service must be created in draft and then provisioned for the call to work.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Create Service Binding",
      "export_key": "illumio_create_service_binding",
      "id": 16,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1645557167713,
      "name": "illumio_create_service_binding",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"service_bindings\": [{\"href\": \"/orgs/1/service_bindings/c7098f30-8460-4873-a06c-8df87dc1ba1d\"}, {\"href\": \"/orgs/1/service_bindings/ef302a43-0e59-4288-a4aa-1196369d1f29\"}, {\"href\": \"/orgs/1/service_bindings/0fe5b79a-0b0d-4281-89db-d8a7867aaf61\"}], \"errors\": []}, \"raw\": null, \"inputs\": {\"illumio_workload_hrefs\": \"/orgs/1/workloads/32e366cc-bd18-44aa-a637-9a6e761e268e,/orgs/1/workloads/c733e8b0-fbc8-4764-b313-1655072c65df,/orgs/1/workloads/9c8b69b9-c741-4689-b8c7-f8ebee0dbee8\", \"illumio_virtual_service_href\": \"/orgs/1/sec_policy/active/virtual_services/575f43f4-3f99-4bb0-8a6f-9e2da7a9fbd2\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 469, \"timestamp\": \"2022-01-07 10:23:22\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"service_bindings\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}}, \"errors\": {\"type\": \"array\"}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_workload_hrefs\": {\"type\": \"string\"}, \"illumio_virtual_service_href\": {\"type\": \"string\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "d0aafc50-c66f-4bb8-aea9-28f140c570d3",
      "version": 2,
      "view_items": [
        {
          "content": "409df56b-ef4d-4f9d-878d-7e4a02a3f125",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "e87d6be7-b10b-44f3-a127-5142cba80f55",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1642088590503,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Create a Virtual Service object.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Create Virtual Service",
      "export_key": "illumio_create_virtual_service",
      "id": 17,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1646858506535,
      "name": "illumio_create_virtual_service",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"href\": \"/orgs/1/sec_policy/draft/virtual_services/575f43f4-3f99-4bb0-8a6f-9e2da7a9fbd2\", \"name\": \"VS-IBM-SOAR-3389-TCP\", \"created_at\": \"2022-01-07T15:23:17.885Z\", \"updated_at\": \"2022-01-07T15:23:17.897Z\", \"update_type\": \"create\", \"created_by\": {\"href\": \"/users/464\"}, \"updated_by\": {\"href\": \"/users/464\"}, \"caps\": [\"write\", \"provision\", \"delete\"], \"apply_to\": \"host_only\", \"service_ports\": [{\"port\": 3389, \"proto\": 6}], \"ip_overrides\": []}, \"raw\": null, \"inputs\": {\"illumio_protocol\": \"TCP\", \"illumio_port\": 3389, \"illumio_virtual_service_name\": \"VS-IBM-SOAR-3389-TCP\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 658, \"timestamp\": \"2022-01-07 10:23:17\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"name\": {\"type\": \"string\"}, \"created_at\": {\"type\": \"string\"}, \"updated_at\": {\"type\": \"string\"}, \"update_type\": {\"type\": \"string\"}, \"created_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"updated_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"caps\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"apply_to\": {\"type\": \"string\"}, \"service_ports\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"port\": {\"type\": \"integer\"}, \"proto\": {\"type\": \"integer\"}}}}, \"ip_overrides\": {\"type\": \"array\"}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_protocol\": {\"type\": \"string\"}, \"illumio_port\": {\"type\": \"integer\"}, \"illumio_virtual_service_name\": {\"type\": \"string\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "ce477403-4400-4a92-99bb-75314b116b9a",
      "version": 3,
      "view_items": [
        {
          "content": "ffe384a7-acf9-49f0-afed-eb7a3c0350fe",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "2f0081a0-12a1-46a4-aa86-5ec9b5c7c003",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "0a285607-f172-4d79-aafe-32d4c09752a8",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1642088590554,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Get an IP List object by HREF.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Get IP List",
      "export_key": "illumio_get_ip_list",
      "id": 18,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1646858496204,
      "name": "illumio_get_ip_list",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"href\": \"/orgs/1/sec_policy/active/ip_lists/1334\", \"name\": \"Any (0.0.0.0/0 and ::/0)\", \"created_at\": \"2021-09-13T15:03:07.000Z\", \"updated_at\": \"2021-09-13T15:03:07.015Z\", \"created_by\": {\"href\": \"/users/0\"}, \"updated_by\": {\"href\": \"/users/0\"}, \"ip_ranges\": [{\"from_ip\": \"0.0.0.0/0\", \"exclusion\": false}, {\"from_ip\": \"::/0\", \"exclusion\": false}]}, \"raw\": null, \"inputs\": {\"illumio_ip_list_name\": \"Any (0.0.0.0/0 and ::/0)\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 811, \"timestamp\": \"2022-01-07 10:22:52\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"name\": {\"type\": \"string\"}, \"created_at\": {\"type\": \"string\"}, \"updated_at\": {\"type\": \"string\"}, \"created_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"updated_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"ip_ranges\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"from_ip\": {\"type\": \"string\"}, \"exclusion\": {\"type\": \"boolean\"}}}}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_ip_list_name\": {\"type\": \"string\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "b392588f-6b16-4429-9f50-14e0c47e1fa7",
      "version": 4,
      "view_items": [
        {
          "content": "e450fa96-8f4c-4e30-92be-247e6236a901",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": []
    },
    {
      "created_date": 1646857543294,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Get a collection of IP lists based on the provided parameters.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Get IP Lists",
      "export_key": "illumio_get_ip_lists",
      "id": 34,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1646857543317,
      "name": "illumio_get_ip_lists",
      "tags": [],
      "uuid": "e055a978-d96f-4108-adc5-7bc28ac9238d",
      "version": 1,
      "view_items": [
        {
          "content": "122502d6-cefb-4d15-b6c6-bb6bee514cad",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "bd30b155-c0c9-4bbf-a29b-6899297bae57",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "84a34403-4d47-4747-9817-db73c4eec3e2",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "28911ea5-d2b7-4038-9300-3929fc7d278e",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1642088590619,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Get a workload by HREF.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Get Workload",
      "export_key": "illumio_get_workload",
      "id": 19,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1645557167822,
      "name": "illumio_get_workload",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"href\": \"/orgs/1/workloads/3d14ec61-edaf-452e-b1b9-b7308652c0f6\", \"created_at\": \"2021-09-13T16:01:07.735779Z\", \"updated_at\": \"2021-12-16T16:47:04.458647Z\", \"created_by\": {\"href\": \"/orgs/1/agents/17456\"}, \"updated_by\": {\"href\": \"/orgs/1/agents/17456\"}, \"caps\": [\"write\"], \"hostname\": \"user-4\", \"public_ip\": \"66.124.202.19\", \"interfaces\": [{\"name\": \"eth0\", \"address\": \"fe80::402:ffff:feef:5a4d\", \"cidr_block\": 64, \"network\": {\"href\": \"/orgs/1/networks/9977853d-639e-4afd-a505-9e0fd419ce06\"}, \"network_detection_mode\": \"link_local\", \"loopback\": false}, {\"name\": \"eth0\", \"address\": \"10.1.0.46\", \"cidr_block\": 24, \"default_gateway_address\": \"10.1.0.1\", \"network\": {\"href\": \"/orgs/1/networks/a9dd8b22-3108-4c64-911b-ac1b2eb5919e\"}, \"network_detection_mode\": \"single_private_brn\", \"loopback\": false}, {\"name\": \"eth0.public\", \"address\": \"66.124.202.19\", \"cidr_block\": 32, \"network\": {\"href\": \"/orgs/1/networks/a9dd8b22-3108-4c64-911b-ac1b2eb5919e\"}, \"network_detection_mode\": \"manual\", \"loopback\": false}], \"service_provider\": \"example.com\", \"data_center\": \"us-west.example.com\", \"data_center_zone\": \"us-west\", \"os_id\": \"ubuntu-x86_64-xenial\", \"os_detail\": \"5.4.0-1038-aws #40-Ubuntu SMP Fri Feb 5 23:50:40 UTC 2021 (Ubuntu 20.04.2 LTS)\", \"online\": true, \"deleted\": false, \"ignored_interface_names\": [], \"containers_inherit_host_policy\": false, \"blocked_connection_action\": \"drop\", \"labels\": [{\"href\": \"/orgs/1/labels/15420\"}, {\"href\": \"/orgs/1/labels/15431\"}, {\"href\": \"/orgs/1/labels/15430\"}, {\"href\": \"/orgs/1/labels/15411\"}], \"agent\": {\"href\": \"/orgs/1/agents/17456\", \"config\": {\"mode\": \"illuminated\", \"log_traffic\": false, \"visibility_level\": \"flow_summary\"}, \"status\": {\"status\": \"active\", \"uid\": \"us-west+i-0ab12cd3e4fg5678h\", \"instance_id\": \"i-0ab12cd3e4fg5678h\", \"last_heartbeat_on\": \"2022-01-07T16:14:31.378648Z\", \"uptime_seconds\": 10025687, \"agent_version\": \"21.2.0-7831\", \"managed_since\": \"2021-09-13T16:01:07.772006Z\", \"fw_config_current\": false, \"firewall_rule_count\": 0, \"security_policy_refresh_at\": \"2022-01-03T20:54:34.809195Z\", \"security_policy_applied_at\": \"2022-01-03T20:54:34.809195Z\", \"security_policy_received_at\": \"2022-01-03T20:54:34.809195Z\", \"agent_health_errors\": {\"errors\": [], \"warnings\": []}, \"security_policy_sync_state\": \"syncing\"}, \"unpair_allowed\": true, \"type\": \"Host\"}, \"ven\": {\"href\": \"/orgs/1/vens/3d14ec61-edaf-452e-b1b9-b7308652c0f6\"}, \"enforcement_mode\": \"visibility_only\", \"visibility_level\": \"flow_summary\"}, \"raw\": null, \"inputs\": {\"illumio_workload_href\": \"/orgs/1/workloads/3d14ec61-edaf-452e-b1b9-b7308652c0f6\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 486, \"timestamp\": \"2022-01-07 10:27:31\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"created_at\": {\"type\": \"string\"}, \"updated_at\": {\"type\": \"string\"}, \"created_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"updated_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"caps\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"hostname\": {\"type\": \"string\"}, \"public_ip\": {\"type\": \"string\"}, \"interfaces\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"name\": {\"type\": \"string\"}, \"address\": {\"type\": \"string\"}, \"cidr_block\": {\"type\": \"integer\"}, \"network\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"network_detection_mode\": {\"type\": \"string\"}, \"loopback\": {\"type\": \"boolean\"}, \"default_gateway_address\": {\"type\": \"string\"}, \"link_state\": {\"type\": \"string\"}}}}, \"os_id\": {\"type\": \"string\"}, \"os_detail\": {\"type\": \"string\"}, \"online\": {\"type\": \"boolean\"}, \"deleted\": {\"type\": \"boolean\"}, \"ignored_interface_names\": {\"type\": \"array\"}, \"containers_inherit_host_policy\": {\"type\": \"boolean\"}, \"blocked_connection_action\": {\"type\": \"string\"}, \"agent\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"config\": {\"type\": \"object\", \"properties\": {\"mode\": {\"type\": \"string\"}, \"log_traffic\": {\"type\": \"boolean\"}, \"security_policy_update_mode\": {\"type\": \"string\"}, \"visibility_level\": {\"type\": \"string\"}}}, \"secure_connect\": {\"type\": \"object\", \"properties\": {\"matching_issuer_name\": {\"type\": \"string\"}}}, \"status\": {\"type\": \"object\", \"properties\": {\"status\": {\"type\": \"string\"}, \"last_heartbeat_on\": {\"type\": \"string\"}, \"uptime_seconds\": {\"type\": \"integer\"}, \"agent_version\": {\"type\": \"string\"}, \"managed_since\": {\"type\": \"string\"}, \"fw_config_current\": {\"type\": \"boolean\"}, \"firewall_rule_count\": {\"type\": \"integer\"}, \"agent_health_errors\": {\"type\": \"object\", \"properties\": {\"errors\": {\"type\": \"array\"}, \"warnings\": {\"type\": \"array\"}}}, \"security_policy_sync_state\": {\"type\": \"string\"}, \"security_policy_refresh_at\": {\"type\": \"string\"}, \"security_policy_applied_at\": {\"type\": \"string\"}, \"security_policy_received_at\": {\"type\": \"string\"}, \"uid\": {\"type\": \"string\"}, \"instance_id\": {\"type\": \"string\"}}}, \"unpair_allowed\": {\"type\": \"boolean\"}, \"type\": {\"type\": \"string\"}}}, \"ven\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"enforcement_mode\": {\"type\": \"string\"}, \"visibility_level\": {\"type\": \"string\"}, \"service_provider\": {\"type\": \"string\"}, \"data_center\": {\"type\": \"string\"}, \"data_center_zone\": {\"type\": \"string\"}, \"firewall_coexistence\": {\"type\": \"object\", \"properties\": {\"illumio_primary\": {\"type\": \"boolean\"}}}, \"name\": {\"type\": \"string\"}, \"description\": {\"type\": \"string\"}, \"labels\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_workload_enforcement_mode\": {\"type\": \"string\"}, \"illumio_workload_managed\": {\"type\": \"boolean\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "be1272ff-9710-442a-b3af-c6f992baebbd",
      "version": 2,
      "view_items": [
        {
          "content": "0b4eb69c-22c0-4fbd-8640-55ced4388bc7",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": []
    },
    {
      "created_date": 1642088590695,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Get multiple workloads based on the given search criteria.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Get Workloads",
      "export_key": "illumio_get_workloads",
      "id": 20,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1646857571857,
      "name": "illumio_get_workloads",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"workloads\": [{\"href\": \"/orgs/1/workloads/3d14ec61-edaf-452e-b1b9-b7308652c0f6\", \"created_at\": \"2021-09-13T16:01:07.735779Z\", \"updated_at\": \"2021-12-16T16:47:04.458647Z\", \"created_by\": {\"href\": \"/orgs/1/agents/17456\"}, \"updated_by\": {\"href\": \"/orgs/1/agents/17456\"}, \"caps\": [\"write\"], \"hostname\": \"user-4\", \"public_ip\": \"66.124.202.19\", \"interfaces\": [{\"name\": \"eth0\", \"address\": \"fe80::402:ffff:feef:5a4d\", \"cidr_block\": 64, \"network\": {\"href\": \"/orgs/1/networks/9977853d-639e-4afd-a505-9e0fd419ce06\"}, \"network_detection_mode\": \"link_local\", \"loopback\": false}, {\"name\": \"eth0\", \"address\": \"10.1.0.46\", \"cidr_block\": 24, \"default_gateway_address\": \"10.1.0.1\", \"network\": {\"href\": \"/orgs/1/networks/a9dd8b22-3108-4c64-911b-ac1b2eb5919e\"}, \"network_detection_mode\": \"single_private_brn\", \"loopback\": false}, {\"name\": \"eth0.public\", \"address\": \"66.124.202.19\", \"cidr_block\": 32, \"network\": {\"href\": \"/orgs/1/networks/a9dd8b22-3108-4c64-911b-ac1b2eb5919e\"}, \"network_detection_mode\": \"manual\", \"loopback\": false}], \"service_provider\": \"example.com\", \"data_center\": \"us-west.example.com\", \"data_center_zone\": \"us-west\", \"os_id\": \"ubuntu-x86_64-xenial\", \"os_detail\": \"5.4.0-1038-aws #40-Ubuntu SMP Fri Feb 5 23:50:40 UTC 2021 (Ubuntu 20.04.2 LTS)\", \"online\": true, \"deleted\": false, \"ignored_interface_names\": [], \"containers_inherit_host_policy\": false, \"blocked_connection_action\": \"drop\", \"labels\": [{\"href\": \"/orgs/1/labels/15420\"}, {\"href\": \"/orgs/1/labels/15431\"}, {\"href\": \"/orgs/1/labels/15430\"}, {\"href\": \"/orgs/1/labels/15411\"}], \"agent\": {\"href\": \"/orgs/1/agents/17456\", \"config\": {\"mode\": \"illuminated\", \"log_traffic\": false, \"visibility_level\": \"flow_summary\"}, \"status\": {\"status\": \"active\", \"uid\": \"us-west+i-0ab12cd3e4fg5678h\", \"instance_id\": \"i-0ab12cd3e4fg5678h\", \"last_heartbeat_on\": \"2022-01-07T16:14:31.378648Z\", \"uptime_seconds\": 10025687, \"agent_version\": \"21.2.0-7831\", \"managed_since\": \"2021-09-13T16:01:07.772006Z\", \"fw_config_current\": false, \"firewall_rule_count\": 0, \"security_policy_refresh_at\": \"2022-01-03T20:54:34.809195Z\", \"security_policy_applied_at\": \"2022-01-03T20:54:34.809195Z\", \"security_policy_received_at\": \"2022-01-03T20:54:34.809195Z\", \"agent_health_errors\": {\"errors\": [], \"warnings\": []}, \"security_policy_sync_state\": \"syncing\"}, \"unpair_allowed\": true, \"type\": \"Host\"}, \"ven\": {\"href\": \"/orgs/1/vens/3d14ec61-edaf-452e-b1b9-b7308652c0f6\"}, \"enforcement_mode\": \"visibility_only\", \"visibility_level\": \"flow_summary\"}, {\"href\": \"/orgs/1/workloads/1fd97272-1497-47b8-95c9-6f530dbe0749\", \"created_at\": \"2021-09-13T16:00:39.951135Z\", \"updated_at\": \"2021-12-16T16:47:04.465816Z\", \"created_by\": {\"href\": \"/orgs/1/agents/17423\"}, \"updated_by\": {\"href\": \"/orgs/1/agents/17423\"}, \"caps\": [\"write\"], \"hostname\": \"dev-db-2\", \"public_ip\": \"66.124.202.19\", \"interfaces\": [{\"name\": \"eth0\", \"address\": \"fe80::45a:d8ff:fea9:54b1\", \"cidr_block\": 64, \"network\": {\"href\": \"/orgs/1/networks/9977853d-639e-4afd-a505-9e0fd419ce06\"}, \"network_detection_mode\": \"link_local\", \"loopback\": false}, {\"name\": \"eth0\", \"address\": \"10.1.0.82\", \"cidr_block\": 24, \"default_gateway_address\": \"10.1.0.1\", \"network\": {\"href\": \"/orgs/1/networks/a9dd8b22-3108-4c64-911b-ac1b2eb5919e\"}, \"network_detection_mode\": \"single_private_brn\", \"loopback\": false}, {\"name\": \"eth0.public\", \"address\": \"66.124.202.19\", \"cidr_block\": 32, \"network\": {\"href\": \"/orgs/1/networks/a9dd8b22-3108-4c64-911b-ac1b2eb5919e\"}, \"network_detection_mode\": \"manual\", \"loopback\": false}], \"service_provider\": \"example.com\", \"data_center\": \"us-west.example.com\", \"data_center_zone\": \"us-west\", \"os_id\": \"ubuntu-x86_64-xenial\", \"os_detail\": \"5.4.0-1038-aws #40-Ubuntu SMP Fri Feb 5 23:50:40 UTC 2021 (Ubuntu 20.04.2 LTS)\", \"online\": true, \"deleted\": false, \"ignored_interface_names\": [], \"containers_inherit_host_policy\": false, \"blocked_connection_action\": \"drop\", \"labels\": [{\"href\": \"/orgs/1/labels/15427\"}, {\"href\": \"/orgs/1/labels/15426\"}, {\"href\": \"/orgs/1/labels/15418\"}, {\"href\": \"/orgs/1/labels/15422\"}], \"agent\": {\"href\": \"/orgs/1/agents/17423\", \"config\": {\"mode\": \"illuminated\", \"log_traffic\": false, \"visibility_level\": \"flow_summary\"}, \"status\": {\"status\": \"active\", \"uid\": \"us-west+i-0e65e2aec3677d51e\", \"instance_id\": \"i-0e65e2aec3677d51e\", \"last_heartbeat_on\": \"2022-01-07T16:15:17.913215Z\", \"uptime_seconds\": 10025636, \"agent_version\": \"21.2.0-7831\", \"managed_since\": \"2021-09-13T16:00:39.974839Z\", \"fw_config_current\": false, \"firewall_rule_count\": 0, \"security_policy_refresh_at\": \"2022-01-03T20:55:54.361991Z\", \"security_policy_applied_at\": \"2022-01-03T20:55:54.361991Z\", \"security_policy_received_at\": \"2022-01-03T20:55:54.361991Z\", \"agent_health_errors\": {\"errors\": [], \"warnings\": []}, \"security_policy_sync_state\": \"syncing\"}, \"unpair_allowed\": true, \"type\": \"Host\"}, \"ven\": {\"href\": \"/orgs/1/vens/1fd97272-1497-47b8-95c9-6f530dbe0749\"}, \"enforcement_mode\": \"visibility_only\", \"visibility_level\": \"flow_summary\"}]}, \"raw\": null, \"inputs\": {\"illumio_workload_enforcement_mode\": \"visibility_only\", \"illumio_workload_managed\": true}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 534, \"timestamp\": \"2022-01-07 11:41:53\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"workloads\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"created_at\": {\"type\": \"string\"}, \"updated_at\": {\"type\": \"string\"}, \"created_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"updated_by\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"caps\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"hostname\": {\"type\": \"string\"}, \"public_ip\": {\"type\": \"string\"}, \"interfaces\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"name\": {\"type\": \"string\"}, \"address\": {\"type\": \"string\"}, \"cidr_block\": {\"type\": \"integer\"}, \"network\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"network_detection_mode\": {\"type\": \"string\"}, \"loopback\": {\"type\": \"boolean\"}, \"default_gateway_address\": {\"type\": \"string\"}, \"link_state\": {\"type\": \"string\"}}}}, \"os_id\": {\"type\": \"string\"}, \"os_detail\": {\"type\": \"string\"}, \"online\": {\"type\": \"boolean\"}, \"deleted\": {\"type\": \"boolean\"}, \"ignored_interface_names\": {\"type\": \"array\"}, \"containers_inherit_host_policy\": {\"type\": \"boolean\"}, \"blocked_connection_action\": {\"type\": \"string\"}, \"agent\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"config\": {\"type\": \"object\", \"properties\": {\"mode\": {\"type\": \"string\"}, \"log_traffic\": {\"type\": \"boolean\"}, \"security_policy_update_mode\": {\"type\": \"string\"}, \"visibility_level\": {\"type\": \"string\"}}}, \"secure_connect\": {\"type\": \"object\", \"properties\": {\"matching_issuer_name\": {\"type\": \"string\"}}}, \"status\": {\"type\": \"object\", \"properties\": {\"status\": {\"type\": \"string\"}, \"last_heartbeat_on\": {\"type\": \"string\"}, \"uptime_seconds\": {\"type\": \"integer\"}, \"agent_version\": {\"type\": \"string\"}, \"managed_since\": {\"type\": \"string\"}, \"fw_config_current\": {\"type\": \"boolean\"}, \"firewall_rule_count\": {\"type\": \"integer\"}, \"agent_health_errors\": {\"type\": \"object\", \"properties\": {\"errors\": {\"type\": \"array\"}, \"warnings\": {\"type\": \"array\"}}}, \"security_policy_sync_state\": {\"type\": \"string\"}, \"security_policy_refresh_at\": {\"type\": \"string\"}, \"security_policy_applied_at\": {\"type\": \"string\"}, \"security_policy_received_at\": {\"type\": \"string\"}, \"uid\": {\"type\": \"string\"}, \"instance_id\": {\"type\": \"string\"}}}, \"unpair_allowed\": {\"type\": \"boolean\"}, \"type\": {\"type\": \"string\"}}}, \"ven\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}, \"enforcement_mode\": {\"type\": \"string\"}, \"visibility_level\": {\"type\": \"string\"}, \"service_provider\": {\"type\": \"string\"}, \"data_center\": {\"type\": \"string\"}, \"data_center_zone\": {\"type\": \"string\"}, \"firewall_coexistence\": {\"type\": \"object\", \"properties\": {\"illumio_primary\": {\"type\": \"boolean\"}}}, \"name\": {\"type\": \"string\"}, \"description\": {\"type\": \"string\"}, \"labels\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}}}}}}}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_workload_enforcement_mode\": {\"type\": \"string\"}, \"illumio_workload_managed\": {\"type\": \"boolean\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "f37f5a8d-6a8d-4530-b9bb-b2b717029e7b",
      "version": 3,
      "view_items": [
        {
          "content": "76c81049-1756-4dc0-8271-ea96a17a1547",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "ac601a0b-89fd-4df1-8060-37fef1fb0210",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "19f4a49c-407a-45b0-af3c-30757874ccc7",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "c614ef19-8ba2-4f6f-a33f-c2c944671627",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "7f8498ff-740e-448c-b432-5d35cf81e6a6",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "2720e0e9-6d6d-4517-8d2b-8f36abc8a5e2",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "d0d874a9-185d-42cc-8d83-f63ff7ab276b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "28911ea5-d2b7-4038-9300-3929fc7d278e",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1642088590768,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Provision draft policy changes for the given security policy objects.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Provision Objects",
      "export_key": "illumio_provision_objects",
      "id": 21,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1645557167949,
      "name": "illumio_provision_objects",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"provisioned_hrefs\": [\"/orgs/1/sec_policy/active/virtual_services/575f43f4-3f99-4bb0-8a6f-9e2da7a9fbd2\"]}, \"raw\": null, \"inputs\": {\"illumio_policy_object_hrefs\": \"/orgs/1/sec_policy/draft/virtual_services/575f43f4-3f99-4bb0-8a6f-9e2da7a9fbd2\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 490, \"timestamp\": \"2022-01-07 10:23:20\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"provisioned_hrefs\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_policy_object_hrefs\": {\"type\": \"string\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "7e217607-3dba-43c9-8236-f0254565e0a7",
      "version": 2,
      "view_items": [
        {
          "content": "17125777-7012-4db2-bfa7-3934cd69836e",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1635349048433,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Run an Explorer query to get a traffic analysis report based on the provided inputs. The query checks all sources and destinations for traffic on a given port/protocol. Returns up to 100,000 results.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Run Traffic Analysis",
      "export_key": "illumio_run_traffic_analysis",
      "id": 2,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1645557167980,
      "name": "illumio_run_traffic_analysis",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"traffic_flows\": [{\"src\": {\"ip\": \"198.204.226.234\"}, \"dst\": {\"ip\": \"10.1.100.43\", \"workload\": {\"href\": \"/orgs/1/workloads/9c8b69b9-c741-4689-b8c7-f8ebee0dbee8\", \"hostname\": \"windows-jumpbox-1\", \"os_type\": \"windows\", \"labels\": [{\"href\": \"/orgs/1/labels/15415\", \"key\": \"app\", \"value\": \"A-ADMIN\"}, {\"href\": \"/orgs/1/labels/15411\", \"key\": \"env\", \"value\": \"E-PROD\"}, {\"href\": \"/orgs/1/labels/15412\", \"key\": \"loc\", \"value\": \"L-DALLAS\"}, {\"href\": \"/orgs/1/labels/15416\", \"key\": \"role\", \"value\": \"R-JUMP-SRV\"}]}}, \"service\": {\"port\": 3389, \"proto\": 6, \"process_name\": \"svchost.exe\", \"windows_service_name\": \"TermService\", \"user_name\": \"NETWORK SERVICE\"}, \"num_connections\": 1, \"state\": \"active\", \"timestamp_range\": {\"first_detected\": \"2021-12-29T20:38:13Z\", \"last_detected\": \"2021-12-29T20:38:13Z\"}, \"dst_bi\": 0, \"dst_bo\": 0, \"policy_decision\": \"potentially_blocked\", \"flow_direction\": \"inbound\"}, {\"src\": {\"ip\": \"27.124.5.118\"}, \"dst\": {\"ip\": \"10.1.100.43\", \"workload\": {\"href\": \"/orgs/1/workloads/9c8b69b9-c741-4689-b8c7-f8ebee0dbee8\", \"hostname\": \"windows-jumpbox-1\", \"os_type\": \"windows\", \"labels\": [{\"href\": \"/orgs/1/labels/15415\", \"key\": \"app\", \"value\": \"A-ADMIN\"}, {\"href\": \"/orgs/1/labels/15411\", \"key\": \"env\", \"value\": \"E-PROD\"}, {\"href\": \"/orgs/1/labels/15412\", \"key\": \"loc\", \"value\": \"L-DALLAS\"}, {\"href\": \"/orgs/1/labels/15416\", \"key\": \"role\", \"value\": \"R-JUMP-SRV\"}]}}, \"service\": {\"port\": 3389, \"proto\": 6, \"process_name\": \"svchost.exe\", \"windows_service_name\": \"TermService\", \"user_name\": \"NETWORK SERVICE\"}, \"num_connections\": 17, \"state\": \"timed out\", \"timestamp_range\": {\"first_detected\": \"2021-12-25T13:49:29Z\", \"last_detected\": \"2021-12-25T13:49:29Z\"}, \"dst_bi\": 0, \"dst_bo\": 0, \"policy_decision\": \"potentially_blocked\", \"flow_direction\": \"inbound\"}]}, \"raw\": null, \"inputs\": {\"illumio_protocol\": \"TCP\", \"illumio_traffic_analysis_policy_decisions\": [\"potentially_blocked\", \"unknown\"], \"illumio_traffic_analysis_end_time\": 1640926800000, \"illumio_traffic_analysis_start_time\": 1640322000000, \"illumio_port\": 3389}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 8923, \"timestamp\": \"2022-01-07 10:23:10\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"traffic_flows\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"src\": {\"type\": \"object\", \"properties\": {\"ip\": {\"type\": \"string\"}}}, \"dst\": {\"type\": \"object\", \"properties\": {\"ip\": {\"type\": \"string\"}, \"workload\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"name\": {\"type\": \"string\"}, \"hostname\": {\"type\": \"string\"}, \"os_type\": {\"type\": \"string\"}, \"labels\": {\"type\": \"array\", \"items\": {\"type\": \"object\", \"properties\": {\"href\": {\"type\": \"string\"}, \"key\": {\"type\": \"string\"}, \"value\": {\"type\": \"string\"}}}}}}}}, \"service\": {\"type\": \"object\", \"properties\": {\"port\": {\"type\": \"integer\"}, \"proto\": {\"type\": \"integer\"}}}, \"num_connections\": {\"type\": \"integer\"}, \"state\": {\"type\": \"string\"}, \"timestamp_range\": {\"type\": \"object\", \"properties\": {\"first_detected\": {\"type\": \"string\"}, \"last_detected\": {\"type\": \"string\"}}}, \"dst_bi\": {\"type\": \"integer\"}, \"dst_bo\": {\"type\": \"integer\"}, \"policy_decision\": {\"type\": \"string\"}, \"flow_direction\": {\"type\": \"string\"}}}}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_protocol\": {\"type\": \"string\"}, \"illumio_traffic_analysis_policy_decisions\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"illumio_traffic_analysis_end_time\": {\"type\": \"integer\"}, \"illumio_traffic_analysis_start_time\": {\"type\": \"integer\"}, \"illumio_port\": {\"type\": \"integer\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "262be6c2-036f-45c8-a921-709c9b3e2a61",
      "version": 4,
      "view_items": [
        {
          "content": "ffe384a7-acf9-49f0-afed-eb7a3c0350fe",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "2f0081a0-12a1-46a4-aa86-5ec9b5c7c003",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "c206b828-3ae4-428a-8e8a-1f68f63be937",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "673c7ecc-5274-4bd4-a6d9-ab5c6e8f9c44",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "1f10ccab-e7ab-432e-aeb8-cbbcde1a995a",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    },
    {
      "created_date": 1642088590832,
      "creator": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "description": {
        "content": "Update the Enforcement Mode for one or more workloads.",
        "format": "text"
      },
      "destination_handle": "illumio_message_queue",
      "display_name": "Illumio: Update Workload Enforcement Mode",
      "export_key": "illumio_update_workload_enforcement_mode",
      "id": 22,
      "last_modified_by": {
        "display_name": "Duncan Sommerville",
        "id": 1,
        "name": "duncan.sommerville@illumio.com",
        "type": "user"
      },
      "last_modified_time": 1645557168013,
      "name": "illumio_update_workload_enforcement_mode",
      "output_json_example": "{\"version\": 2.0, \"success\": true, \"reason\": null, \"content\": {\"errors\": [], \"workloads\": [\"/orgs/1/workloads/3d14ec61-edaf-452e-b1b9-b7308652c0f6\", \"/orgs/1/workloads/1fd97272-1497-47b8-95c9-6f530dbe0749\"]}, \"raw\": null, \"inputs\": {\"illumio_enforcement_mode\": \"selective\", \"illumio_workload_hrefs\": \"/orgs/1/workloads/3d14ec61-edaf-452e-b1b9-b7308652c0f6,/orgs/1/workloads/1fd97272-1497-47b8-95c9-6f530dbe0749\"}, \"metrics\": {\"version\": \"1.0\", \"package\": \"fn-illumio\", \"package_version\": \"1.0.0\", \"host\": \"C02G82JEMD6R\", \"execution_time_ms\": 1107, \"timestamp\": \"2022-01-07 11:17:34\"}}",
      "output_json_schema": "{\"$schema\": \"http://json-schema.org/draft-06/schema\", \"type\": \"object\", \"properties\": {\"version\": {\"type\": \"number\"}, \"success\": {\"type\": \"boolean\"}, \"reason\": {}, \"content\": {\"type\": \"object\", \"properties\": {\"errors\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}, \"workloads\": {\"type\": \"array\", \"items\": {\"type\": \"string\"}}}}, \"raw\": {}, \"inputs\": {\"type\": \"object\", \"properties\": {\"illumio_policy_object_hrefs\": {\"type\": \"string\"}}}, \"metrics\": {\"type\": \"object\", \"properties\": {\"version\": {\"type\": \"string\"}, \"package\": {\"type\": \"string\"}, \"package_version\": {\"type\": \"string\"}, \"host\": {\"type\": \"string\"}, \"execution_time_ms\": {\"type\": \"integer\"}, \"timestamp\": {\"type\": \"string\"}}}}}",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "0ce13682-d6e3-4f37-afe4-15311d5fcd79",
      "version": 2,
      "view_items": [
        {
          "content": "e87d6be7-b10b-44f3-a127-5142cba80f55",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "f192318b-ea83-44bd-9f93-74ea87db9bea",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Port",
          "object_type": "incident",
          "programmatic_name": "illumio_block_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 5
        },
        {
          "actions": [],
          "description": null,
          "name": "Illumio: Block Selected Port",
          "object_type": "artifact",
          "programmatic_name": "illumio_block_selected_port",
          "tags": [
            {
              "tag_handle": "fn_illumio",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 6
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 33,
  "inbound_destinations": [],
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1646890669321,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1646890669321,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [
        "3e76725a-fdf4-4619-9ba3-10d80ca41265",
        "5a53c5e6-e4ce-4bbb-8811-6b5f8cfe0638"
      ],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "illumio_message_queue",
      "name": "Illumio Message Queue",
      "programmatic_name": "illumio_message_queue",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "users": [],
      "uuid": "fc58c481-077a-48ce-aa1b-c95219583a9a"
    }
  ],
  "notifications": null,
  "overrides": [],
  "phases": [],
  "regulators": null,
  "roles": [],
  "scripts": [],
  "server_version": {
    "build_number": 6783,
    "major": 41,
    "minor": 0,
    "version": "41.0.6783"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [
    {
      "actions": [],
      "display_name": "Traffic Flows",
      "export_key": "illumio_traffic_flows",
      "fields": {
        "destination_ip": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "illumio_traffic_flows/destination_ip",
          "hide_notification": false,
          "id": 293,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "destination_ip",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "127.0.0.1",
          "prefix": null,
          "read_only": false,
          "required": "always",
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Destination IP",
          "tooltip": "Destination (provider) IP address for the traffic flow.",
          "type_id": 1001,
          "uuid": "8b3a58f3-5eda-47d9-be8e-9f78c3b5d8f8",
          "values": [],
          "width": 132
        },
        "first_detected": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "illumio_traffic_flows/first_detected",
          "hide_notification": false,
          "id": 327,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "first_detected",
          "operation_perms": {},
          "operations": [],
          "order": 5,
          "placeholder": "2021-01-01T12:00:00Z",
          "prefix": null,
          "read_only": false,
          "required": "always",
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "First Detected",
          "tooltip": "Timestamp at which the flow was initially detected.",
          "type_id": 1001,
          "uuid": "8b06c680-71d7-42b8-93f0-d9c47d6b6488",
          "values": [],
          "width": 69
        },
        "flow_details": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "illumio_traffic_flows/flow_details",
          "hide_notification": false,
          "id": 299,
          "input_type": "textarea",
          "internal": false,
          "is_tracked": false,
          "name": "flow_details",
          "operation_perms": {},
          "operations": [],
          "order": 7,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": true,
          "tags": [],
          "templates": [],
          "text": "Flow Details",
          "tooltip": "Any additional details about the traffic flow.",
          "type_id": 1001,
          "uuid": "16ffe45e-492d-42e1-a42a-bcb2b1e35b53",
          "values": [],
          "width": 142
        },
        "flows": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "illumio_traffic_flows/flows",
          "hide_notification": false,
          "id": 295,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "flows",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "required": "always",
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Flows",
          "tooltip": "Flow count during detection period.",
          "type_id": 1001,
          "uuid": "1c279a45-50b5-434e-b878-3aae78d6974f",
          "values": [],
          "width": 68
        },
        "last_detected": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "illumio_traffic_flows/last_detected",
          "hide_notification": false,
          "id": 328,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "last_detected",
          "operation_perms": {},
          "operations": [],
          "order": 6,
          "placeholder": "2021-01-01T12:00:00Z",
          "prefix": null,
          "read_only": false,
          "required": "always",
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Last Detected",
          "tooltip": "Timestamp at which the flow was last detected.",
          "type_id": 1001,
          "uuid": "a30d0c2b-82b9-4185-93c9-ff24c41dfdb6",
          "values": [],
          "width": 69
        },
        "port": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "illumio_traffic_flows/port",
          "hide_notification": false,
          "id": 297,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "port",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "8080",
          "prefix": null,
          "read_only": false,
          "required": "always",
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Port",
          "tooltip": "Traffic flow destination port.",
          "type_id": 1001,
          "uuid": "95af29d9-f500-4bc5-8310-6dd931e1b9cb",
          "values": [],
          "width": 54
        },
        "protocol": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "illumio_traffic_flows/protocol",
          "hide_notification": false,
          "id": 298,
          "input_type": "select",
          "internal": false,
          "is_tracked": false,
          "name": "protocol",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "required": "always",
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Protocol",
          "tooltip": "Traffic flow protocol.",
          "type_id": 1001,
          "uuid": "859b591b-094c-4bc4-aa13-48ad936b30e5",
          "values": [
            {
              "default": true,
              "enabled": true,
              "hidden": false,
              "label": "TCP",
              "properties": null,
              "uuid": "4a966acd-9d4b-4898-8711-c7adc2dcd9e5",
              "value": 112
            },
            {
              "default": false,
              "enabled": true,
              "hidden": false,
              "label": "UDP",
              "properties": null,
              "uuid": "9177a76e-571a-493f-a3a4-57d5731a499f",
              "value": 113
            },
            {
              "default": false,
              "enabled": true,
              "hidden": false,
              "label": "UNKNOWN",
              "properties": null,
              "uuid": "66eb52e4-f954-440f-8414-ff0bfcc77e5b",
              "value": 114
            }
          ],
          "width": 86
        },
        "source_ip": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "illumio_traffic_flows/source_ip",
          "hide_notification": false,
          "id": 300,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "source_ip",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "127.0.0.1",
          "prefix": null,
          "read_only": false,
          "required": "always",
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Source IP",
          "tooltip": "Source (consumer) IP address for the traffic flow.",
          "type_id": 1001,
          "uuid": "d608e81b-8aec-4060-a8aa-a6ca8c4ac484",
          "values": [],
          "width": 100
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "illumio_traffic_flows",
      "uuid": "27f89c51-566a-44b8-bcd2-742239bb4d51"
    }
  ],
  "workflows": [
    {
      "actions": [],
      "content": {
        "version": 137,
        "workflow_id": "illumio_block_port",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"illumio_block_port\" isExecutable=\"true\" name=\"Illumio: Block Port\"\u003e\u003cdocumentation\u003eBlock traffic on a given port and protocol throughout the network using an enforcement boundary. Optionally, legitimate traffic flows can be explicitly allowed based on a traffic analysis query.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0wkxi3e\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cendEvent id=\"EndEvent_1x5pscp\"\u003e\u003cincoming\u003eSequenceFlow_0exrbid\u003c/incoming\u003e\u003c/endEvent\u003e\u003cserviceTask id=\"ServiceTask_1vw25jp\" name=\"Illumio: Create Virtual Service\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"ce477403-4400-4a92-99bb-75314b116b9a\"\u003e{\"inputs\":{\"2f0081a0-12a1-46a4-aa86-5ec9b5c7c003\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"bdc5eb6e-1190-43e4-9002-66857d8961db\"}}},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_port = rule.properties.illumio_port\\ninputs.illumio_protocol = rule.properties.illumio_protocol\\ninputs.illumio_virtual_service_name = \\\"VS-IBM-SOAR-{0}-{1}\\\".format(str(rule.properties.illumio_port), rule.properties.illumio_protocol)\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"virtual_service\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0r6j7qy\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1f4h5ie\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_0tuki0f\" name=\"Illumio: Run Traffic Analysis\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"262be6c2-036f-45c8-a921-709c9b3e2a61\"\u003e{\"inputs\":{\"2f0081a0-12a1-46a4-aa86-5ec9b5c7c003\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"bdc5eb6e-1190-43e4-9002-66857d8961db\"}},\"1f10ccab-e7ab-432e-aeb8-cbbcde1a995a\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[\"8fd972ff-ccf5-4b73-8532-17d0ec238f46\",\"36e5cea7-e130-49d5-bb50-3aa59d54537a\"]}}},\"post_processing_script\":\"INCIDENT_TABLE_MAX_ROWS = 100\\n\\n\\ndef convert_protocol(proto):\\n    return \u0027TCP\u0027 if proto == 6 else \u0027UDP\u0027 if proto == 17 else \u0027Unknown\u0027\\n\\n\\ndef service_details_to_string(service):\\n    service_string = \u0027\u0027\\n    for k,v in service.items():\\n        if k != \u0027port\u0027 and k != \u0027proto\u0027:\\n            service_string += \u0027\u0026lt;br/\u0026gt;{0}: {1}\u0027.format(k.replace(\u0027_\u0027, \u0027 \u0027).capitalize(), v)\\n    return service_string\\n\\n\\ndef add_traffic_flow_table_row(flow):\\n    row = incident.addRow(\u0027illumio_traffic_flows\u0027)\\n    row[\u0027source_ip\u0027] = flow[\u0027src\u0027][\u0027ip\u0027]\\n    row[\u0027destination_ip\u0027] = flow[\u0027dst\u0027][\u0027ip\u0027]\\n    row[\u0027port\u0027] = flow[\u0027service\u0027][\u0027port\u0027]\\n    row[\u0027protocol\u0027] = convert_protocol(flow[\u0027service\u0027][\u0027proto\u0027])\\n    row[\u0027flows\u0027] = flow[\u0027num_connections\u0027]\\n    row[\u0027first_detected\u0027] = flow[\u0027timestamp_range\u0027][\u0027first_detected\u0027]\\n    row[\u0027last_detected\u0027] = flow[\u0027timestamp_range\u0027][\u0027last_detected\u0027]\\n    detail_string = \\\"Network traffic detected by Block Port workflow.\\\"\\n    service_details = service_details_to_string(flow[\u0027service\u0027])\\n    if service_details:\\n        detail_string += \\\"\u0026lt;br/\u0026gt;\u0026lt;br/\u0026gt;Service details: {0}\\\".format(service_details)\\n    row[\u0027flow_details\u0027] = detail_string\\n\\nflows = results.content[\u0027traffic_flows\u0027]\\nsorted_flows = sorted(flows, key=lambda x: x.get(\u0027num_connections\u0027, 0), reverse=True)\\ntraffic_flow_workloads = set()\\n\\nstored_rows = 0\\n\\nfor flow in sorted_flows:\\n    if \u0027workload\u0027 in flow[\u0027dst\u0027] and \u0027href\u0027 in flow[\u0027dst\u0027][\u0027workload\u0027]:\\n        # store traffic flows with the highest flow count returned from the analysis\\n        if stored_rows \u0026lt; INCIDENT_TABLE_MAX_ROWS:\\n            add_traffic_flow_table_row(flow)\\n            stored_rows += 1\\n        traffic_flow_workloads.add(flow[\u0027dst\u0027][\u0027workload\u0027][\u0027href\u0027])\\n\\nworkflow.addProperty(\u0027traffic_flow_workloads\u0027, {\u0027hrefs\u0027: list(traffic_flow_workloads)})\\nincident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Port\u0026lt;/b\u0026gt; workflow: found \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; distinct traffic flows\\\".format(len(traffic_flow_workloads))\\n    )\\n)\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"from datetime import datetime, timezone, timedelta\\n\\ninputs.illumio_port = rule.properties.illumio_port\\ninputs.illumio_protocol = rule.properties.illumio_protocol\\n\\nstart_time = rule.properties.illumio_block_port_traffic_analysis_start_time\\nend_time = rule.properties.illumio_block_port_traffic_analysis_end_time\\n\\ninputs.illumio_traffic_analysis_start_time = start_time\\ninputs.illumio_traffic_analysis_end_time = end_time\\n\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0byktbg\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_175ocrf\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_0m8s6qq\" name=\"Illumio: Provision Objects\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7e217607-3dba-43c9-8236-f0254565e0a7\"\u003e{\"inputs\":{},\"post_processing_script\":\"if results.content[\u0027provisioned_hrefs\u0027]:\\n    active_href = results.content[\u0027provisioned_hrefs\u0027][0]\\nelse:\\n    active_href = workflow.properties.virtual_service.content[\u0027href\u0027]\\n\\nworkflow.addProperty(\u0027virtual_service_active_href\u0027, {\u0027href\u0027: active_href})\\nincident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Port\u0026lt;/b\u0026gt; workflow: provisioned virtual service with HREF \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;.\\\".format(active_href)\\n    )\\n)\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_policy_object_hrefs = workflow.properties.virtual_service.content[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1f4h5ie\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1g8d5px\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_16w5pzw\" name=\"Illumio: Create Service Binding\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"d0aafc50-c66f-4bb8-aea9-28f140c570d3\"\u003e{\"inputs\":{},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_virtual_service_href = workflow.properties.virtual_service_active_href[\u0027href\u0027]\\ninputs.illumio_workload_hrefs = \u0027,\u0027.join(workflow.properties.traffic_flow_workloads[\u0027hrefs\u0027])\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1g8d5px\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1f8zbga\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_08iibm1\" name=\"Illumio: Create Ruleset\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"670ee399-82a6-4b3b-b306-21be548c9206\"\u003e{\"inputs\":{},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_ruleset_name = \\\"RS-IBM-SOAR-{0}-{1}\\\".format(str(rule.properties.illumio_port), rule.properties.illumio_protocol)\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"ruleset\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1f8zbga\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0p0ag0i\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_0bkj8st\" name=\"Illumio: Create Enforcement Bound...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"d4a92760-7580-4670-8ff9-d9c87a07217d\"\u003e{\"inputs\":{\"2f0081a0-12a1-46a4-aa86-5ec9b5c7c003\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"bdc5eb6e-1190-43e4-9002-66857d8961db\"}},\"fb884927-fa6d-44a9-9065-a1b37e0a14ce\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"text_value\":\"ams\"}}},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_port = rule.properties.illumio_port\\ninputs.illumio_protocol = rule.properties.illumio_protocol\\ninputs.illumio_enforcement_boundary_name = \\\"EB-IBM-SOAR-{0}-{1}\\\".format(str(rule.properties.illumio_port), rule.properties.illumio_protocol)\\ninputs.illumio_enforcement_boundary_consumers = workflow.properties.any_ip_list[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"enforcement_boundary\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0yznr08\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_11ppinj\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_0ax3y6w\" name=\"Illumio: Update Workload Enforcem...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"0ce13682-d6e3-4f37-afe4-15311d5fcd79\"\u003e{\"inputs\":{\"f192318b-ea83-44bd-9f93-74ea87db9bea\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"5734efbc-38b8-42df-8880-cd137acaacac\"}}},\"post_processing_script\":\"incident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Port\u0026lt;/b\u0026gt; workflow: moved all \u0026lt;b\u0026gt;Visibility Only\u0026lt;/b\u0026gt; managed workloads into \u0026lt;b\u0026gt;Selective\u0026lt;/b\u0026gt; enforcement.\\\"\\n    )\\n)\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_workload_hrefs = \u0027,\u0027.join(workflow.properties.workload_hrefs[\u0027hrefs\u0027])\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1oik75b\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_134arp3\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1g8d5px\" sourceRef=\"ServiceTask_0m8s6qq\" targetRef=\"ServiceTask_16w5pzw\"/\u003e\u003csequenceFlow id=\"SequenceFlow_134arp3\" sourceRef=\"ServiceTask_0ax3y6w\" targetRef=\"ExclusiveGateway_0tnbyxw\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0p0ag0i\" sourceRef=\"ServiceTask_08iibm1\" targetRef=\"ServiceTask_0495w8y\"/\u003e\u003cserviceTask id=\"ServiceTask_0495w8y\" name=\"Illumio: Create Rule\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"0b04d470-8d93-412c-ae3a-a82702477ba9\"\u003e{\"inputs\":{\"bd455988-dc7a-4a0e-9bba-a2ec1effd7c9\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[\"2b9260ec-3a80-4020-a107-4805534202c2\"]}},\"e7c7f51e-1e92-4629-bea4-f94c5efbdedc\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[\"0c9f3f74-62c2-4d54-96b1-a26dc745a95b\"]}}},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_ruleset_href = workflow.properties.ruleset.content[\u0027href\u0027]\\ninputs.illumio_rule_consumers = workflow.properties.any_ip_list[\u0027href\u0027]\\ninputs.illumio_rule_providers = workflow.properties.virtual_service_active_href[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0p0ag0i\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_07mjuh2\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cexclusiveGateway default=\"SequenceFlow_0gccpej\" id=\"ExclusiveGateway_0b67d46\"\u003e\u003cincoming\u003eSequenceFlow_175ocrf\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0r6j7qy\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_0gccpej\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_175ocrf\" sourceRef=\"ServiceTask_0tuki0f\" targetRef=\"ExclusiveGateway_0b67d46\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0r6j7qy\" name=\"Found traffic flows\" sourceRef=\"ExclusiveGateway_0b67d46\" targetRef=\"ServiceTask_1vw25jp\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"len(workflow.properties.traffic_flow_workloads[\u0027hrefs\u0027]) \u003e 0\",\"language\":\"python3\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":\"python3\"}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_0gccpej\" sourceRef=\"ExclusiveGateway_0b67d46\" targetRef=\"ExclusiveGateway_0tg4mx0\"/\u003e\u003csequenceFlow id=\"SequenceFlow_1f4h5ie\" sourceRef=\"ServiceTask_1vw25jp\" targetRef=\"ServiceTask_0m8s6qq\"/\u003e\u003cexclusiveGateway default=\"SequenceFlow_1ompax3\" id=\"ExclusiveGateway_1ssfawx\"\u003e\u003cincoming\u003eSequenceFlow_12wicjx\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0byktbg\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_1ompax3\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0byktbg\" name=\"Allow legitimate traffic\" sourceRef=\"ExclusiveGateway_1ssfawx\" targetRef=\"ServiceTask_0tuki0f\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"bool(rule.properties.illumio_block_port_create_allow_list)\",\"language\":\"python3\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":\"python3\"}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_1ompax3\" sourceRef=\"ExclusiveGateway_1ssfawx\" targetRef=\"ExclusiveGateway_0tg4mx0\"/\u003e\u003cexclusiveGateway default=\"SequenceFlow_193f5j1\" id=\"ExclusiveGateway_0jjd1er\"\u003e\u003cincoming\u003eSequenceFlow_16f42iq\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1cuhy20\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_193f5j1\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_1cuhy20\" name=\"Update enforcement\" sourceRef=\"ExclusiveGateway_0jjd1er\" targetRef=\"ServiceTask_16087ya\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"script_text\":\"#Enter supplemental script\\n#Variables instantiated in this editor are available\\n#for use in the expression above\",\"final_expression_text\":\"bool(rule.properties.illumio_block_port_update_enforcement)\",\"language\":\"python3\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":\"python3\"}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_193f5j1\" sourceRef=\"ExclusiveGateway_0jjd1er\" targetRef=\"ExclusiveGateway_0tnbyxw\"/\u003e\u003cserviceTask id=\"ServiceTask_16087ya\" name=\"Illumio: Get Workloads\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"f37f5a8d-6a8d-4530-b9bb-b2b717029e7b\"\u003e{\"inputs\":{\"7f8498ff-740e-448c-b432-5d35cf81e6a6\":{\"input_type\":\"static\",\"static_input\":{\"boolean_value\":true,\"multiselect_value\":[]}},\"d0d874a9-185d-42cc-8d83-f63ff7ab276b\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"b278f8a6-47c6-4fc8-8293-6ddbbcc20e52\"}}},\"post_processing_script\":\"workload_hrefs = [workload[\u0027href\u0027] for workload in results.content[\u0027workloads\u0027]]\\nworkflow.addProperty(\u0027workload_hrefs\u0027, {\u0027hrefs\u0027: workload_hrefs})\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1cuhy20\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1oik75b\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1oik75b\" sourceRef=\"ServiceTask_16087ya\" targetRef=\"ServiceTask_0ax3y6w\"/\u003e\u003cserviceTask id=\"ServiceTask_0vyxaaq\" name=\"Illumio: Provision Objects\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7e217607-3dba-43c9-8236-f0254565e0a7\"\u003e{\"inputs\":{},\"post_processing_script\":\"incident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Port\u0026lt;/b\u0026gt; workflow: provisioned enforcement boundary with HREF \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; to block inbound traffic not explicitly allowed by rules on \u0026lt;b\u0026gt;{1} {2}\u0026lt;/b\u0026gt;.\\\".format(\\n            workflow.properties.enforcement_boundary.content[\u0027href\u0027],\\n            rule.properties.illumio_port, rule.properties.illumio_protocol\\n        )\\n    )\\n)\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_policy_object_hrefs = workflow.properties.enforcement_boundary.content[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_11ppinj\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_16f42iq\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_11ppinj\" sourceRef=\"ServiceTask_0bkj8st\" targetRef=\"ServiceTask_0vyxaaq\"/\u003e\u003csequenceFlow id=\"SequenceFlow_16f42iq\" sourceRef=\"ServiceTask_0vyxaaq\" targetRef=\"ExclusiveGateway_0jjd1er\"/\u003e\u003cserviceTask id=\"ServiceTask_0tc8jvs\" name=\"Illumio: Provision Objects\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7e217607-3dba-43c9-8236-f0254565e0a7\"\u003e{\"inputs\":{},\"post_processing_script\":\"from datetime import datetime\\n\\n\\ndef convert_soar_timestamp_to_iso(timestamp):\\n    iso_date = datetime.utcfromtimestamp(timestamp / 1000)  # convert from ms to seconds\\n    return \u0027{0}{1}\u0027.format(iso_date.isoformat(), \u0027+00\u0027)  # express times in UTC\\n\\nstart_time = convert_soar_timestamp_to_iso(rule.properties.illumio_block_port_traffic_analysis_start_time)\\nend_time = convert_soar_timestamp_to_iso(rule.properties.illumio_block_port_traffic_analysis_end_time)\\n\\nincident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Port\u0026lt;/b\u0026gt; workflow: provisioned allow rule on \u0026lt;b\u0026gt;{0} {1}\u0026lt;/b\u0026gt; for inbound traffic found between \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; and \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;.\\\".format(\\n            rule.properties.illumio_port,\\n            rule.properties.illumio_protocol,\\n            start_time, end_time\\n        )\\n    )\\n)\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_policy_object_hrefs = workflow.properties.ruleset.content[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_07mjuh2\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0i3rbmb\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_07mjuh2\" sourceRef=\"ServiceTask_0495w8y\" targetRef=\"ServiceTask_0tc8jvs\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0i3rbmb\" sourceRef=\"ServiceTask_0tc8jvs\" targetRef=\"ExclusiveGateway_0tg4mx0\"/\u003e\u003csequenceFlow id=\"SequenceFlow_1f8zbga\" sourceRef=\"ServiceTask_16w5pzw\" targetRef=\"ServiceTask_08iibm1\"/\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_0tg4mx0\"\u003e\u003cincoming\u003eSequenceFlow_1ompax3\u003c/incoming\u003e\u003cincoming\u003eSequenceFlow_0i3rbmb\u003c/incoming\u003e\u003cincoming\u003eSequenceFlow_0gccpej\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0yznr08\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0yznr08\" sourceRef=\"ExclusiveGateway_0tg4mx0\" targetRef=\"ServiceTask_0bkj8st\"/\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_0tnbyxw\"\u003e\u003cincoming\u003eSequenceFlow_134arp3\u003c/incoming\u003e\u003cincoming\u003eSequenceFlow_193f5j1\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0exrbid\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0exrbid\" sourceRef=\"ExclusiveGateway_0tnbyxw\" targetRef=\"EndEvent_1x5pscp\"/\u003e\u003cserviceTask id=\"ServiceTask_0ljp6mx\" name=\"Illumio: Get IP Lists\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"e055a978-d96f-4108-adc5-7bc28ac9238d\"\u003e{\"inputs\":{\"122502d6-cefb-4d15-b6c6-bb6bee514cad\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"text_value\":\"Any (0.0.0.0/0 and ::/0)\"}},\"28911ea5-d2b7-4038-9300-3929fc7d278e\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"number_value\":1}}},\"post_processing_script\":\"workflow.addProperty(\u0027any_ip_list\u0027, results.content[\u0027ip_lists\u0027][0])\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0wkxi3e\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_12wicjx\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0wkxi3e\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0ljp6mx\"/\u003e\u003csequenceFlow id=\"SequenceFlow_12wicjx\" sourceRef=\"ServiceTask_0ljp6mx\" targetRef=\"ExclusiveGateway_1ssfawx\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0r9aueb\"\u003e\u003ctext\u003eSearch up the default Any IP list needed for both the enforcement boundary and rule creation\u003c/text\u003e\u003c/textAnnotation\u003e\u003ctextAnnotation id=\"TextAnnotation_100yquj\"\u003e\u003ctext\u003eProvision the enforcement boundary\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_01rhzkq\" sourceRef=\"ServiceTask_0vyxaaq\" targetRef=\"TextAnnotation_100yquj\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0ap1t8o\"\u003e\u003ctext\u003eProvision the Ruleset\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1jd1fui\" sourceRef=\"ServiceTask_0tc8jvs\" targetRef=\"TextAnnotation_0ap1t8o\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_03ftmsb\"\u003e\u003ctext\u003eProvision the virtual service. This is required to bind the discovered workloads in the next step\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_06ktm9c\" sourceRef=\"ServiceTask_0m8s6qq\" targetRef=\"TextAnnotation_03ftmsb\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1wf5v4n\"\u003e\u003ctext\u003eCreate a rule to allow traffic on the blocked port for the workloads found in the traffic query\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0zwsvwl\" sourceRef=\"ServiceTask_0495w8y\" targetRef=\"TextAnnotation_1wf5v4n\"/\u003e\u003cassociation id=\"Association_1q3dl8y\" sourceRef=\"ServiceTask_0ljp6mx\" targetRef=\"TextAnnotation_0r9aueb\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"-191\" y=\"72\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"-196\" y=\"107\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1x5pscp\" id=\"EndEvent_1x5pscp_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"2096\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"2069\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1vw25jp\" id=\"ServiceTask_1vw25jp_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"433\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0tuki0f\" id=\"ServiceTask_0tuki0f_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"130\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0m8s6qq\" id=\"ServiceTask_0m8s6qq_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"562\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_16w5pzw\" id=\"ServiceTask_16w5pzw_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"700\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_08iibm1\" id=\"ServiceTask_08iibm1_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"837\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0bkj8st\" id=\"ServiceTask_0bkj8st_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1344\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0ax3y6w\" id=\"ServiceTask_0ax3y6w_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1863\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1g8d5px\" id=\"SequenceFlow_1g8d5px_di\"\u003e\u003comgdi:waypoint x=\"662\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"700\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"636\" y=\"290\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_134arp3\" id=\"SequenceFlow_134arp3_di\"\u003e\u003comgdi:waypoint x=\"1963\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1989\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1992\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1931\" y=\"290.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0p0ag0i\" id=\"SequenceFlow_0p0ag0i_di\"\u003e\u003comgdi:waypoint x=\"937\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"971\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"909\" y=\"291\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0495w8y\" id=\"ServiceTask_0495w8y_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"971\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0b67d46\" id=\"ExclusiveGateway_0b67d46_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"295\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"320\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_175ocrf\" id=\"SequenceFlow_175ocrf_di\"\u003e\u003comgdi:waypoint x=\"230\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"295\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"262.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0r6j7qy\" id=\"SequenceFlow_0r6j7qy_di\"\u003e\u003comgdi:waypoint x=\"320\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"320\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"433\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"24\" width=\"64\" x=\"343\" y=\"276\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0gccpej\" id=\"SequenceFlow_0gccpej_di\"\u003e\u003comgdi:waypoint x=\"345\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1258\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"756.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1f4h5ie\" id=\"SequenceFlow_1f4h5ie_di\"\u003e\u003comgdi:waypoint x=\"533\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"562\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"547.5\" y=\"290\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_1ssfawx\" id=\"ExclusiveGateway_1ssfawx_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"-2\" y=\"65\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"23\" y=\"118\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0byktbg\" id=\"SequenceFlow_0byktbg_di\"\u003e\u003comgdi:waypoint x=\"23\" xsi:type=\"omgdc:Point\" y=\"115\"/\u003e\u003comgdi:waypoint x=\"23\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"130\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"25\" width=\"80\" x=\"36\" y=\"166\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1ompax3\" id=\"SequenceFlow_1ompax3_di\"\u003e\u003comgdi:waypoint x=\"48\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003comgdi:waypoint x=\"1283\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003comgdi:waypoint x=\"1283\" xsi:type=\"omgdc:Point\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"620.5\" y=\"68.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0jjd1er\" id=\"ExclusiveGateway_0jjd1er_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"1621\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1601\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1cuhy20\" id=\"SequenceFlow_1cuhy20_di\"\u003e\u003comgdi:waypoint x=\"1646\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"1646\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1724\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"25\" width=\"63\" x=\"1654\" y=\"273\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_193f5j1\" id=\"SequenceFlow_193f5j1_di\"\u003e\u003comgdi:waypoint x=\"1671\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1967\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1774\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_16087ya\" id=\"ServiceTask_16087ya_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1724\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1oik75b\" id=\"SequenceFlow_1oik75b_di\"\u003e\u003comgdi:waypoint x=\"1824\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1863\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1799\" y=\"291\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0vyxaaq\" id=\"ServiceTask_0vyxaaq_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1486\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_11ppinj\" id=\"SequenceFlow_11ppinj_di\"\u003e\u003comgdi:waypoint x=\"1444\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1486\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1420\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_16f42iq\" id=\"SequenceFlow_16f42iq_di\"\u003e\u003comgdi:waypoint x=\"1586\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1621\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1559\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0tc8jvs\" id=\"ServiceTask_0tc8jvs_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1105\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_07mjuh2\" id=\"SequenceFlow_07mjuh2_di\"\u003e\u003comgdi:waypoint x=\"1071\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1105\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1043\" y=\"290\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0i3rbmb\" id=\"SequenceFlow_0i3rbmb_di\"\u003e\u003comgdi:waypoint x=\"1205\" xsi:type=\"omgdc:Point\" y=\"313\"/\u003e\u003comgdi:waypoint x=\"1283\" xsi:type=\"omgdc:Point\" y=\"313\"/\u003e\u003comgdi:waypoint x=\"1283\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1199\" y=\"291.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1f8zbga\" id=\"SequenceFlow_1f8zbga_di\"\u003e\u003comgdi:waypoint x=\"800\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"837\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"818.5\" y=\"290\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0r9aueb\" id=\"TextAnnotation_0r9aueb_di\"\u003e\u003comgdc:Bounds height=\"67\" width=\"221\" x=\"-189\" y=\"146\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0tg4mx0\" id=\"ExclusiveGateway_0tg4mx0_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"1257.8699609882965\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"1282.8699609882965\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0yznr08\" id=\"SequenceFlow_0yznr08_di\"\u003e\u003comgdi:waypoint x=\"1308\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1344\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"1326\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_100yquj\" id=\"TextAnnotation_100yquj_di\"\u003e\u003comgdc:Bounds height=\"48\" width=\"96\" x=\"1488\" y=\"262\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_01rhzkq\" id=\"Association_01rhzkq_di\"\u003e\u003comgdi:waypoint x=\"1536\" xsi:type=\"omgdc:Point\" y=\"246\"/\u003e\u003comgdi:waypoint x=\"1536\" xsi:type=\"omgdc:Point\" y=\"262\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0ap1t8o\" id=\"TextAnnotation_0ap1t8o_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"101\" x=\"1220\" y=\"322\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1jd1fui\" id=\"Association_1jd1fui_di\"\u003e\u003comgdi:waypoint x=\"1205\" xsi:type=\"omgdc:Point\" y=\"324\"/\u003e\u003comgdi:waypoint x=\"1220\" xsi:type=\"omgdc:Point\" y=\"328\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_03ftmsb\" id=\"TextAnnotation_03ftmsb_di\"\u003e\u003comgdc:Bounds height=\"60\" width=\"197\" x=\"562\" y=\"369\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_06ktm9c\" id=\"Association_06ktm9c_di\"\u003e\u003comgdi:waypoint x=\"634\" xsi:type=\"omgdc:Point\" y=\"352\"/\u003e\u003comgdi:waypoint x=\"643\" xsi:type=\"omgdc:Point\" y=\"369\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1wf5v4n\" id=\"TextAnnotation_1wf5v4n_di\"\u003e\u003comgdc:Bounds height=\"54\" width=\"200\" x=\"973\" y=\"372\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0zwsvwl\" id=\"Association_0zwsvwl_di\"\u003e\u003comgdi:waypoint x=\"1044\" xsi:type=\"omgdc:Point\" y=\"352\"/\u003e\u003comgdi:waypoint x=\"1056\" xsi:type=\"omgdc:Point\" y=\"372\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0tnbyxw\" id=\"ExclusiveGateway_0tnbyxw_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"1966.7909199522103\" y=\"180.77299880525686\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"1991.7909199522103\" y=\"233.77299880525686\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0exrbid\" id=\"SequenceFlow_0exrbid_di\"\u003e\u003comgdi:waypoint x=\"2017\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"2096\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"2056.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0ljp6mx\" id=\"ServiceTask_0ljp6mx_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"-128\" y=\"50\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0wkxi3e\" id=\"SequenceFlow_0wkxi3e_di\"\u003e\u003comgdi:waypoint x=\"-155\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003comgdi:waypoint x=\"-128\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"-141.5\" y=\"68\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_12wicjx\" id=\"SequenceFlow_12wicjx_di\"\u003e\u003comgdi:waypoint x=\"-28\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003comgdi:waypoint x=\"-2\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"-15\" y=\"68\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1q3dl8y\" id=\"Association_1q3dl8y_di\"\u003e\u003comgdi:waypoint x=\"-71\" xsi:type=\"omgdc:Point\" y=\"130\"/\u003e\u003comgdi:waypoint x=\"-77\" xsi:type=\"omgdc:Point\" y=\"146\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 137,
      "creator_id": "duncan.sommerville@illumio.com",
      "description": "Block traffic on a given port and protocol throughout the network using an enforcement boundary. Optionally, legitimate traffic flows can be explicitly allowed based on a traffic analysis query.",
      "export_key": "illumio_block_port",
      "last_modified_by": "duncan.sommerville@illumio.com",
      "last_modified_time": 1646889139600,
      "name": "Illumio: Block Port",
      "object_type": "incident",
      "programmatic_name": "illumio_block_port",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "dec03071-5295-4244-b2d5-e03406140f4c",
      "workflow_id": 5
    },
    {
      "actions": [],
      "content": {
        "version": 18,
        "workflow_id": "illumio_block_selected_port",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"illumio_block_selected_port\" isExecutable=\"true\" name=\"Illumio: Block Selected Port\"\u003e\u003cdocumentation\u003eBlock traffic on the port represented by the calling Artifact throughout the network using an enforcement boundary. Optionally, legitimate traffic flows can be explicitly allowed based on a traffic analysis query.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0yekg2v\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cendEvent id=\"EndEvent_1x5pscp\"\u003e\u003cincoming\u003eSequenceFlow_0exrbid\u003c/incoming\u003e\u003c/endEvent\u003e\u003cserviceTask id=\"ServiceTask_1vw25jp\" name=\"Illumio: Create Virtual Service\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"ce477403-4400-4a92-99bb-75314b116b9a\"\u003e{\"inputs\":{\"2f0081a0-12a1-46a4-aa86-5ec9b5c7c003\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"bdc5eb6e-1190-43e4-9002-66857d8961db\"}}},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_port = int(artifact.value)\\ninputs.illumio_protocol = rule.properties.illumio_protocol\\ninputs.illumio_virtual_service_name = \\\"VS-IBM-SOAR-{0}-{1}\\\".format(str(artifact.value), rule.properties.illumio_protocol)\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"virtual_service\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0r6j7qy\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1f4h5ie\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_0tuki0f\" name=\"Illumio: Run Traffic Analysis\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"262be6c2-036f-45c8-a921-709c9b3e2a61\"\u003e{\"inputs\":{\"2f0081a0-12a1-46a4-aa86-5ec9b5c7c003\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"bdc5eb6e-1190-43e4-9002-66857d8961db\"}},\"1f10ccab-e7ab-432e-aeb8-cbbcde1a995a\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[\"8fd972ff-ccf5-4b73-8532-17d0ec238f46\",\"36e5cea7-e130-49d5-bb50-3aa59d54537a\"]}}},\"post_processing_script\":\"INCIDENT_TABLE_MAX_ROWS = 100\\n\\n\\ndef convert_protocol(proto):\\n    return \u0027TCP\u0027 if proto == 6 else \u0027UDP\u0027 if proto == 17 else \u0027Unknown\u0027\\n\\n\\ndef service_details_to_string(service):\\n    service_string = \u0027\u0027\\n    for k,v in service.items():\\n        if k != \u0027port\u0027 and k != \u0027proto\u0027:\\n            service_string += \u0027\u0026lt;br/\u0026gt;{0}: {1}\u0027.format(k.replace(\u0027_\u0027, \u0027 \u0027).capitalize(), v)\\n    return service_string\\n\\n\\ndef add_traffic_flow_table_row(flow):\\n    row = incident.addRow(\u0027illumio_traffic_flows\u0027)\\n    row[\u0027source_ip\u0027] = flow[\u0027src\u0027][\u0027ip\u0027]\\n    row[\u0027destination_ip\u0027] = flow[\u0027dst\u0027][\u0027ip\u0027]\\n    row[\u0027port\u0027] = flow[\u0027service\u0027][\u0027port\u0027]\\n    row[\u0027protocol\u0027] = convert_protocol(flow[\u0027service\u0027][\u0027proto\u0027])\\n    row[\u0027flows\u0027] = flow[\u0027num_connections\u0027]\\n    row[\u0027first_detected\u0027] = flow[\u0027timestamp_range\u0027][\u0027first_detected\u0027]\\n    row[\u0027last_detected\u0027] = flow[\u0027timestamp_range\u0027][\u0027last_detected\u0027]\\n    detail_string = \\\"Network traffic found by Block Selected Port workflow.\\\"\\n    service_details = service_details_to_string(flow[\u0027service\u0027])\\n    if service_details:\\n        detail_string += \\\"\u0026lt;br/\u0026gt;\u0026lt;br/\u0026gt;Service details: {0}\\\".format(service_details)\\n    row[\u0027flow_details\u0027] = detail_string\\n\\nflows = results.content[\u0027traffic_flows\u0027]\\nsorted_flows = sorted(flows, key=lambda x: x.get(\u0027num_connections\u0027, 0), reverse=True)\\ntraffic_flow_workloads = set()\\n\\nstored_rows = 0\\n\\nfor flow in sorted_flows:\\n    if \u0027workload\u0027 in flow[\u0027dst\u0027] and \u0027href\u0027 in flow[\u0027dst\u0027][\u0027workload\u0027]:\\n        # store traffic flows with the highest flow count returned from the analysis\\n        if stored_rows \u0026lt; INCIDENT_TABLE_MAX_ROWS:\\n            add_traffic_flow_table_row(flow)\\n            stored_rows += 1\\n        traffic_flow_workloads.add(flow[\u0027dst\u0027][\u0027workload\u0027][\u0027href\u0027])\\n\\nworkflow.addProperty(\u0027traffic_flow_workloads\u0027, {\u0027hrefs\u0027: list(traffic_flow_workloads)})\\nincident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Selected Port\u0026lt;/b\u0026gt; workflow: found \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; distinct traffic flows\\\".format(len(traffic_flow_workloads))\\n    )\\n)\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"from datetime import datetime, timezone, timedelta\\n\\ninputs.illumio_port = int(artifact.value)\\ninputs.illumio_protocol = rule.properties.illumio_protocol\\n\\nstart_time = rule.properties.illumio_block_port_traffic_analysis_start_time\\nend_time = rule.properties.illumio_block_port_traffic_analysis_end_time\\n\\ninputs.illumio_traffic_analysis_start_time = start_time\\ninputs.illumio_traffic_analysis_end_time = end_time\\n\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0byktbg\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_175ocrf\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_0m8s6qq\" name=\"Illumio: Provision Objects\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7e217607-3dba-43c9-8236-f0254565e0a7\"\u003e{\"inputs\":{},\"post_processing_script\":\"if results.content[\u0027provisioned_hrefs\u0027]:\\n    active_href = results.content[\u0027provisioned_hrefs\u0027][0]\\nelse:\\n    active_href = workflow.properties.virtual_service.content[\u0027href\u0027]\\n\\nworkflow.addProperty(\u0027virtual_service_active_href\u0027, {\u0027href\u0027: active_href})\\nincident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Selected Port\u0026lt;/b\u0026gt; workflow: provisioned virtual service with HREF \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;.\\\".format(active_href)\\n    )\\n)\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_policy_object_hrefs = workflow.properties.virtual_service.content[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1f4h5ie\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1g8d5px\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_16w5pzw\" name=\"Illumio: Create Service Binding\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"d0aafc50-c66f-4bb8-aea9-28f140c570d3\"\u003e{\"inputs\":{},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_virtual_service_href = workflow.properties.virtual_service_active_href[\u0027href\u0027]\\ninputs.illumio_workload_hrefs = \u0027,\u0027.join(workflow.properties.traffic_flow_workloads[\u0027hrefs\u0027])\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1g8d5px\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1f8zbga\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_08iibm1\" name=\"Illumio: Create Ruleset\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"670ee399-82a6-4b3b-b306-21be548c9206\"\u003e{\"inputs\":{},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_ruleset_name = \\\"RS-IBM-SOAR-{0}-{1}\\\".format(str(artifact.value), rule.properties.illumio_protocol)\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"ruleset\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1f8zbga\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0p0ag0i\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_0bkj8st\" name=\"Illumio: Create Enforcement Bound...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"d4a92760-7580-4670-8ff9-d9c87a07217d\"\u003e{\"inputs\":{\"2f0081a0-12a1-46a4-aa86-5ec9b5c7c003\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"bdc5eb6e-1190-43e4-9002-66857d8961db\"}},\"fb884927-fa6d-44a9-9065-a1b37e0a14ce\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"text_value\":\"ams\"}}},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_port = int(artifact.value)\\ninputs.illumio_protocol = rule.properties.illumio_protocol\\ninputs.illumio_enforcement_boundary_name = \\\"EB-IBM-SOAR-{0}-{1}\\\".format(str(artifact.value), rule.properties.illumio_protocol)\\ninputs.illumio_enforcement_boundary_consumers = workflow.properties.any_ip_list[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"enforcement_boundary\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0yznr08\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_11ppinj\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_0ax3y6w\" name=\"Illumio: Update Workload Enforcem...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"0ce13682-d6e3-4f37-afe4-15311d5fcd79\"\u003e{\"inputs\":{\"f192318b-ea83-44bd-9f93-74ea87db9bea\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"5734efbc-38b8-42df-8880-cd137acaacac\"}}},\"post_processing_script\":\"incident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Selected Port\u0026lt;/b\u0026gt; workflow: moved all \u0026lt;b\u0026gt;Visibility Only\u0026lt;/b\u0026gt; managed workloads into \u0026lt;b\u0026gt;Selective\u0026lt;/b\u0026gt; enforcement.\\\"\\n    )\\n)\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_workload_hrefs = \u0027,\u0027.join(workflow.properties.workload_hrefs[\u0027hrefs\u0027])\\n\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1oik75b\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_134arp3\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1g8d5px\" sourceRef=\"ServiceTask_0m8s6qq\" targetRef=\"ServiceTask_16w5pzw\"/\u003e\u003csequenceFlow id=\"SequenceFlow_134arp3\" sourceRef=\"ServiceTask_0ax3y6w\" targetRef=\"ExclusiveGateway_0tnbyxw\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0p0ag0i\" sourceRef=\"ServiceTask_08iibm1\" targetRef=\"ServiceTask_0495w8y\"/\u003e\u003cserviceTask id=\"ServiceTask_0495w8y\" name=\"Illumio: Create Rule\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"0b04d470-8d93-412c-ae3a-a82702477ba9\"\u003e{\"inputs\":{\"bd455988-dc7a-4a0e-9bba-a2ec1effd7c9\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[\"2b9260ec-3a80-4020-a107-4805534202c2\"]}},\"e7c7f51e-1e92-4629-bea4-f94c5efbdedc\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[\"0c9f3f74-62c2-4d54-96b1-a26dc745a95b\"]}}},\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_ruleset_href = workflow.properties.ruleset.content[\u0027href\u0027]\\ninputs.illumio_rule_consumers = workflow.properties.any_ip_list[\u0027href\u0027]\\ninputs.illumio_rule_providers = workflow.properties.virtual_service_active_href[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0p0ag0i\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_07mjuh2\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cexclusiveGateway default=\"SequenceFlow_0gccpej\" id=\"ExclusiveGateway_0b67d46\"\u003e\u003cincoming\u003eSequenceFlow_175ocrf\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0r6j7qy\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_0gccpej\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_175ocrf\" sourceRef=\"ServiceTask_0tuki0f\" targetRef=\"ExclusiveGateway_0b67d46\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0r6j7qy\" name=\"Found traffic flows\" sourceRef=\"ExclusiveGateway_0b67d46\" targetRef=\"ServiceTask_1vw25jp\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"len(workflow.properties.traffic_flow_workloads[\u0027hrefs\u0027]) \u003e 0\",\"language\":\"python3\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":\"python3\"}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_0gccpej\" sourceRef=\"ExclusiveGateway_0b67d46\" targetRef=\"ExclusiveGateway_0tg4mx0\"/\u003e\u003csequenceFlow id=\"SequenceFlow_1f4h5ie\" sourceRef=\"ServiceTask_1vw25jp\" targetRef=\"ServiceTask_0m8s6qq\"/\u003e\u003cexclusiveGateway default=\"SequenceFlow_1ompax3\" id=\"ExclusiveGateway_1ssfawx\"\u003e\u003cincoming\u003eSequenceFlow_0i74w4j\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0byktbg\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_1ompax3\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0byktbg\" name=\"Allow legitimate traffic\" sourceRef=\"ExclusiveGateway_1ssfawx\" targetRef=\"ServiceTask_0tuki0f\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"bool(rule.properties.illumio_block_port_create_allow_list)\",\"language\":\"python3\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":\"python3\"}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_1ompax3\" sourceRef=\"ExclusiveGateway_1ssfawx\" targetRef=\"ExclusiveGateway_0tg4mx0\"/\u003e\u003cexclusiveGateway default=\"SequenceFlow_193f5j1\" id=\"ExclusiveGateway_0jjd1er\"\u003e\u003cincoming\u003eSequenceFlow_16f42iq\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1cuhy20\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_193f5j1\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_1cuhy20\" name=\"Update enforcement\" sourceRef=\"ExclusiveGateway_0jjd1er\" targetRef=\"ServiceTask_16087ya\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"script_text\":\"#Enter supplemental script\\n#Variables instantiated in this editor are available\\n#for use in the expression above\",\"final_expression_text\":\"bool(rule.properties.illumio_block_port_update_enforcement)\",\"language\":\"python3\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":\"python3\"}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_193f5j1\" sourceRef=\"ExclusiveGateway_0jjd1er\" targetRef=\"ExclusiveGateway_0tnbyxw\"/\u003e\u003cserviceTask id=\"ServiceTask_16087ya\" name=\"Illumio: Get Workloads\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"f37f5a8d-6a8d-4530-b9bb-b2b717029e7b\"\u003e{\"inputs\":{\"7f8498ff-740e-448c-b432-5d35cf81e6a6\":{\"input_type\":\"static\",\"static_input\":{\"boolean_value\":true,\"multiselect_value\":[]}},\"d0d874a9-185d-42cc-8d83-f63ff7ab276b\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"b278f8a6-47c6-4fc8-8293-6ddbbcc20e52\"}}},\"post_processing_script\":\"workload_hrefs = [workload[\u0027href\u0027] for workload in results.content[\u0027workloads\u0027]]\\nworkflow.addProperty(\u0027workload_hrefs\u0027, {\u0027hrefs\u0027: workload_hrefs})\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1cuhy20\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1oik75b\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1oik75b\" sourceRef=\"ServiceTask_16087ya\" targetRef=\"ServiceTask_0ax3y6w\"/\u003e\u003cserviceTask id=\"ServiceTask_0vyxaaq\" name=\"Illumio: Provision Objects\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7e217607-3dba-43c9-8236-f0254565e0a7\"\u003e{\"inputs\":{},\"post_processing_script\":\"incident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Selected Port\u0026lt;/b\u0026gt; workflow: provisioned enforcement boundary with HREF \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; to block inbound traffic not explicitly allowed by rules on \u0026lt;b\u0026gt;{1} {2}\u0026lt;/b\u0026gt;.\\\".format(\\n            workflow.properties.enforcement_boundary.content[\u0027href\u0027],\\n            str(artifact.value), rule.properties.illumio_protocol\\n        )\\n    )\\n)\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_policy_object_hrefs = workflow.properties.enforcement_boundary.content[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_11ppinj\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_16f42iq\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_11ppinj\" sourceRef=\"ServiceTask_0bkj8st\" targetRef=\"ServiceTask_0vyxaaq\"/\u003e\u003csequenceFlow id=\"SequenceFlow_16f42iq\" sourceRef=\"ServiceTask_0vyxaaq\" targetRef=\"ExclusiveGateway_0jjd1er\"/\u003e\u003cserviceTask id=\"ServiceTask_0tc8jvs\" name=\"Illumio: Provision Objects\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7e217607-3dba-43c9-8236-f0254565e0a7\"\u003e{\"inputs\":{},\"post_processing_script\":\"from datetime import datetime\\n\\n\\ndef convert_soar_timestamp_to_iso(timestamp):\\n    iso_date = datetime.utcfromtimestamp(timestamp / 1000)  # convert from ms to seconds\\n    return \u0027{0}{1}\u0027.format(iso_date.isoformat(), \u0027+00\u0027)  # express times in UTC\\n\\nstart_time = convert_soar_timestamp_to_iso(rule.properties.illumio_block_port_traffic_analysis_start_time)\\nend_time = convert_soar_timestamp_to_iso(rule.properties.illumio_block_port_traffic_analysis_end_time)\\n\\nincident.addNote(\\n    helper.createRichText(\\n        u\\\"\u0026lt;b\u0026gt;Illumio: Block Selected Port\u0026lt;/b\u0026gt; workflow: provisioned allow rule on \u0026lt;b\u0026gt;{0} {1}\u0026lt;/b\u0026gt; for inbound traffic found between \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; and \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;.\\\".format(\\n            str(artifact.value),\\n            rule.properties.illumio_protocol,\\n            start_time, end_time\\n        )\\n    )\\n)\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.illumio_policy_object_hrefs = workflow.properties.ruleset.content[\u0027href\u0027]\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_07mjuh2\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0i3rbmb\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_07mjuh2\" sourceRef=\"ServiceTask_0495w8y\" targetRef=\"ServiceTask_0tc8jvs\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0i3rbmb\" sourceRef=\"ServiceTask_0tc8jvs\" targetRef=\"ExclusiveGateway_0tg4mx0\"/\u003e\u003csequenceFlow id=\"SequenceFlow_1f8zbga\" sourceRef=\"ServiceTask_16w5pzw\" targetRef=\"ServiceTask_08iibm1\"/\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_0tg4mx0\"\u003e\u003cincoming\u003eSequenceFlow_1ompax3\u003c/incoming\u003e\u003cincoming\u003eSequenceFlow_0i3rbmb\u003c/incoming\u003e\u003cincoming\u003eSequenceFlow_0gccpej\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0yznr08\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0yznr08\" sourceRef=\"ExclusiveGateway_0tg4mx0\" targetRef=\"ServiceTask_0bkj8st\"/\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_0tnbyxw\"\u003e\u003cincoming\u003eSequenceFlow_134arp3\u003c/incoming\u003e\u003cincoming\u003eSequenceFlow_193f5j1\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0exrbid\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0exrbid\" sourceRef=\"ExclusiveGateway_0tnbyxw\" targetRef=\"EndEvent_1x5pscp\"/\u003e\u003cserviceTask id=\"ServiceTask_1gh7idj\" name=\"Illumio: Get IP Lists\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"e055a978-d96f-4108-adc5-7bc28ac9238d\"\u003e{\"inputs\":{\"122502d6-cefb-4d15-b6c6-bb6bee514cad\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"text_value\":\"Any (0.0.0.0/0 and ::/0)\"}},\"28911ea5-d2b7-4038-9300-3929fc7d278e\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"number_value\":1}}},\"post_processing_script\":\"workflow.addProperty(\u0027any_ip_list\u0027, results.content[\u0027ip_lists\u0027][0])\\n\",\"post_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0yekg2v\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0i74w4j\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0yekg2v\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1gh7idj\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0i74w4j\" sourceRef=\"ServiceTask_1gh7idj\" targetRef=\"ExclusiveGateway_1ssfawx\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0r9aueb\"\u003e\u003ctext\u003eSearch up the default Any IP list needed for both the enforcement boundary and rule creation\u003c/text\u003e\u003c/textAnnotation\u003e\u003ctextAnnotation id=\"TextAnnotation_100yquj\"\u003e\u003ctext\u003eProvision the enforcement boundary\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_01rhzkq\" sourceRef=\"ServiceTask_0vyxaaq\" targetRef=\"TextAnnotation_100yquj\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0ap1t8o\"\u003e\u003ctext\u003eProvision the Ruleset\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1jd1fui\" sourceRef=\"ServiceTask_0tc8jvs\" targetRef=\"TextAnnotation_0ap1t8o\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_03ftmsb\"\u003e\u003ctext\u003eProvision the virtual service. This is required to bind the discovered workloads in the next step\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_06ktm9c\" sourceRef=\"ServiceTask_0m8s6qq\" targetRef=\"TextAnnotation_03ftmsb\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1wf5v4n\"\u003e\u003ctext\u003eCreate a rule to allow traffic on the blocked port for the workloads found in the traffic query\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0zwsvwl\" sourceRef=\"ServiceTask_0495w8y\" targetRef=\"TextAnnotation_1wf5v4n\"/\u003e\u003cassociation id=\"Association_1b27vp0\" sourceRef=\"ServiceTask_1gh7idj\" targetRef=\"TextAnnotation_0r9aueb\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"-191\" y=\"72\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"-196\" y=\"107\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1x5pscp\" id=\"EndEvent_1x5pscp_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"2096\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"2069\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1vw25jp\" id=\"ServiceTask_1vw25jp_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"433\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0tuki0f\" id=\"ServiceTask_0tuki0f_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"130\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0m8s6qq\" id=\"ServiceTask_0m8s6qq_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"562\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_16w5pzw\" id=\"ServiceTask_16w5pzw_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"700\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_08iibm1\" id=\"ServiceTask_08iibm1_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"837\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0bkj8st\" id=\"ServiceTask_0bkj8st_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1344\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0ax3y6w\" id=\"ServiceTask_0ax3y6w_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1863\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1g8d5px\" id=\"SequenceFlow_1g8d5px_di\"\u003e\u003comgdi:waypoint x=\"662\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"700\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"636\" y=\"290\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_134arp3\" id=\"SequenceFlow_134arp3_di\"\u003e\u003comgdi:waypoint x=\"1963\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1989\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1992\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1931\" y=\"290.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0p0ag0i\" id=\"SequenceFlow_0p0ag0i_di\"\u003e\u003comgdi:waypoint x=\"937\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"971\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"909\" y=\"291\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0495w8y\" id=\"ServiceTask_0495w8y_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"971\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0b67d46\" id=\"ExclusiveGateway_0b67d46_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"295\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"320\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_175ocrf\" id=\"SequenceFlow_175ocrf_di\"\u003e\u003comgdi:waypoint x=\"230\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"295\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"262.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0r6j7qy\" id=\"SequenceFlow_0r6j7qy_di\"\u003e\u003comgdi:waypoint x=\"320\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"320\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"433\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"24\" width=\"64\" x=\"343\" y=\"276\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0gccpej\" id=\"SequenceFlow_0gccpej_di\"\u003e\u003comgdi:waypoint x=\"345\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1258\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"756.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1f4h5ie\" id=\"SequenceFlow_1f4h5ie_di\"\u003e\u003comgdi:waypoint x=\"533\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"562\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"547.5\" y=\"290\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_1ssfawx\" id=\"ExclusiveGateway_1ssfawx_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"-2\" y=\"65\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"23\" y=\"118\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0byktbg\" id=\"SequenceFlow_0byktbg_di\"\u003e\u003comgdi:waypoint x=\"23\" xsi:type=\"omgdc:Point\" y=\"115\"/\u003e\u003comgdi:waypoint x=\"23\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"130\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"25\" width=\"80\" x=\"36\" y=\"166\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1ompax3\" id=\"SequenceFlow_1ompax3_di\"\u003e\u003comgdi:waypoint x=\"48\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003comgdi:waypoint x=\"1283\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003comgdi:waypoint x=\"1283\" xsi:type=\"omgdc:Point\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"620.5\" y=\"68.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0jjd1er\" id=\"ExclusiveGateway_0jjd1er_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"1621\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1601\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1cuhy20\" id=\"SequenceFlow_1cuhy20_di\"\u003e\u003comgdi:waypoint x=\"1646\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"1646\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1724\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"25\" width=\"63\" x=\"1654\" y=\"273\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_193f5j1\" id=\"SequenceFlow_193f5j1_di\"\u003e\u003comgdi:waypoint x=\"1671\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1967\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1774\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_16087ya\" id=\"ServiceTask_16087ya_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1724\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1oik75b\" id=\"SequenceFlow_1oik75b_di\"\u003e\u003comgdi:waypoint x=\"1824\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1863\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1799\" y=\"291\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0vyxaaq\" id=\"ServiceTask_0vyxaaq_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1486\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_11ppinj\" id=\"SequenceFlow_11ppinj_di\"\u003e\u003comgdi:waypoint x=\"1444\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1486\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1420\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_16f42iq\" id=\"SequenceFlow_16f42iq_di\"\u003e\u003comgdi:waypoint x=\"1586\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1621\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1559\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0tc8jvs\" id=\"ServiceTask_0tc8jvs_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"1105\" y=\"272\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_07mjuh2\" id=\"SequenceFlow_07mjuh2_di\"\u003e\u003comgdi:waypoint x=\"1071\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"1105\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1043\" y=\"290\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0i3rbmb\" id=\"SequenceFlow_0i3rbmb_di\"\u003e\u003comgdi:waypoint x=\"1205\" xsi:type=\"omgdc:Point\" y=\"313\"/\u003e\u003comgdi:waypoint x=\"1283\" xsi:type=\"omgdc:Point\" y=\"313\"/\u003e\u003comgdi:waypoint x=\"1283\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"1199\" y=\"291.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1f8zbga\" id=\"SequenceFlow_1f8zbga_di\"\u003e\u003comgdi:waypoint x=\"800\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003comgdi:waypoint x=\"837\" xsi:type=\"omgdc:Point\" y=\"312\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"818.5\" y=\"290\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0r9aueb\" id=\"TextAnnotation_0r9aueb_di\"\u003e\u003comgdc:Bounds height=\"67\" width=\"221\" x=\"-189\" y=\"146\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0tg4mx0\" id=\"ExclusiveGateway_0tg4mx0_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"1257.8699609882965\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"1282.8699609882965\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0yznr08\" id=\"SequenceFlow_0yznr08_di\"\u003e\u003comgdi:waypoint x=\"1308\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"1344\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"1326\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_100yquj\" id=\"TextAnnotation_100yquj_di\"\u003e\u003comgdc:Bounds height=\"48\" width=\"96\" x=\"1488\" y=\"262\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_01rhzkq\" id=\"Association_01rhzkq_di\"\u003e\u003comgdi:waypoint x=\"1536\" xsi:type=\"omgdc:Point\" y=\"246\"/\u003e\u003comgdi:waypoint x=\"1536\" xsi:type=\"omgdc:Point\" y=\"262\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0ap1t8o\" id=\"TextAnnotation_0ap1t8o_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"101\" x=\"1220\" y=\"322\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1jd1fui\" id=\"Association_1jd1fui_di\"\u003e\u003comgdi:waypoint x=\"1205\" xsi:type=\"omgdc:Point\" y=\"324\"/\u003e\u003comgdi:waypoint x=\"1220\" xsi:type=\"omgdc:Point\" y=\"328\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_03ftmsb\" id=\"TextAnnotation_03ftmsb_di\"\u003e\u003comgdc:Bounds height=\"60\" width=\"197\" x=\"562\" y=\"369\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_06ktm9c\" id=\"Association_06ktm9c_di\"\u003e\u003comgdi:waypoint x=\"634\" xsi:type=\"omgdc:Point\" y=\"352\"/\u003e\u003comgdi:waypoint x=\"643\" xsi:type=\"omgdc:Point\" y=\"369\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1wf5v4n\" id=\"TextAnnotation_1wf5v4n_di\"\u003e\u003comgdc:Bounds height=\"54\" width=\"200\" x=\"973\" y=\"372\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0zwsvwl\" id=\"Association_0zwsvwl_di\"\u003e\u003comgdi:waypoint x=\"1044\" xsi:type=\"omgdc:Point\" y=\"352\"/\u003e\u003comgdi:waypoint x=\"1056\" xsi:type=\"omgdc:Point\" y=\"372\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0tnbyxw\" id=\"ExclusiveGateway_0tnbyxw_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"1966.7909199522103\" y=\"180.77299880525686\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"1991.7909199522103\" y=\"233.77299880525686\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0exrbid\" id=\"SequenceFlow_0exrbid_di\"\u003e\u003comgdi:waypoint x=\"2017\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"2096\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"2056.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1gh7idj\" id=\"ServiceTask_1gh7idj_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"-128\" y=\"50\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0yekg2v\" id=\"SequenceFlow_0yekg2v_di\"\u003e\u003comgdi:waypoint x=\"-155\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003comgdi:waypoint x=\"-128\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"-141.5\" y=\"68\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0i74w4j\" id=\"SequenceFlow_0i74w4j_di\"\u003e\u003comgdi:waypoint x=\"-28\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003comgdi:waypoint x=\"-2\" xsi:type=\"omgdc:Point\" y=\"90\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"-15\" y=\"68\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1b27vp0\" id=\"Association_1b27vp0_di\"\u003e\u003comgdi:waypoint x=\"-65\" xsi:type=\"omgdc:Point\" y=\"130\"/\u003e\u003comgdi:waypoint x=\"-73\" xsi:type=\"omgdc:Point\" y=\"146\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 18,
      "creator_id": "duncan.sommerville@illumio.com",
      "description": "Block traffic on the port represented by the calling Artifact throughout the network using an enforcement boundary. Optionally, legitimate traffic flows can be explicitly allowed based on a traffic analysis query.",
      "export_key": "illumio_block_selected_port",
      "last_modified_by": "duncan.sommerville@illumio.com",
      "last_modified_time": 1646889158220,
      "name": "Illumio: Block Selected Port",
      "object_type": "artifact",
      "programmatic_name": "illumio_block_selected_port",
      "tags": [
        {
          "tag_handle": "fn_illumio",
          "value": null
        }
      ],
      "uuid": "32a1635e-8ca0-4ed1-b6a0-7206e9cce1fd",
      "workflow_id": 6
    }
  ],
  "workspaces": []
}
