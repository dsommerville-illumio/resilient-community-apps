from ipaddress import IPv4Address, IPv4Network
from typing import List

from illumio.explorer import TrafficQuery, TrafficFlow
from illumio.policyobjects import ServiceBinding, VirtualService, IPList
from illumio.rules import Ruleset, Rule, EnforcementBoundary
from illumio.workloads import Workload


def mock_results(op):
    responses = {
        'list_enforcement_boundaries': [
            {
                "href": "/orgs/1/sec_policy/draft/enforcement_boundaries/1",
                "created_at": "2021-12-07T22:28:09.136Z",
                "updated_at": "2021-12-07T22:28:09.136Z",
                "deleted_at": None,
                "created_by": {
                    "href": "/users/1"
                },
                "updated_by": {
                    "href": "/users/1"
                },
                "deleted_by": None,
                "update_type": None,
                "name": "EB-IBM-SOAR-3389-TCP",
                "providers": [
                    {
                        "actors": "ams"
                    }
                ],
                "consumers": [
                    {
                        "ip_list": {
                            "href": "/orgs/1/sec_policy/draft/ip_lists/1"
                        }
                    }
                ],
                "ingress_services": [
                    {
                        "port": 3389,
                        "proto": 6
                    }
                ],
                "caps": [
                    "write",
                    "provision"
                ]
            },
        ],
        'create_enforcement_boundary': {
            "href": "/orgs/1/sec_policy/draft/enforcement_boundaries/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "caps": [
                "write",
                "provision"
            ]
        },
        'enforcement_boundary_existing': {
            "href": "/orgs/1/sec_policy/draft/enforcement_boundaries/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "name": "EB-IBM-SOAR-3389-TCP",
            "providers": [
                {
                    "actors": "ams"
                }
            ],
            "consumers": [
                {
                    "ip_list": {
                        "href": "/orgs/1/sec_policy/draft/ip_lists/1"
                    }
                }
            ],
            "ingress_services": [
                {
                    "port": 3389,
                    "proto": 6
                }
            ],
            "caps": [
                "write",
                "provision"
            ]
        },
        'enforcement_boundary_created': {
            "href": "/orgs/1/sec_policy/draft/enforcement_boundaries/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "name": "NEW-ENFORCEMENT-BOUNDARY",
            "providers": [
                {
                    "actors": "ams"
                }
            ],
            "consumers": [
                {
                    "ip_list": {
                        "href": "/orgs/1/sec_policy/draft/ip_lists/1"
                    }
                }
            ],
            "ingress_services": [
                {
                    "port": 3389,
                    "proto": 6
                }
            ],
            "caps": [
                "write",
                "provision"
            ]
        },
        'list_rulesets': [
            {
                "href": "/orgs/1/sec_policy/draft/rule_sets/1",
                "created_at": "2021-12-07T22:28:09.136Z",
                "updated_at": "2021-12-07T22:28:09.136Z",
                "deleted_at": None,
                "created_by": {
                    "href": "/users/1"
                },
                "updated_by": {
                    "href": "/users/1"
                },
                "deleted_by": None,
                "update_type": None,
                "name": "RS-IBM-SOAR-3389-TCP",
                "description": "",
                "enabled": True,
                "scopes": [[]],
                "rules": [],
                "ip_tables_rules": [],
                "caps": [
                    "write",
                    "provision"
                ]
            }
        ],
        'create_ruleset': {
            "href": "/orgs/1/sec_policy/draft/rule_sets/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "enabled": True,
            "description": "",
            "caps": [
                "write",
                "provision"
            ]
        },
        'ruleset_existing': {
            "href": "/orgs/1/sec_policy/draft/rule_sets/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "name": "RS-IBM-SOAR-3389-TCP",
            "enabled": True,
            "description": "",
            "scopes": [[]],
            "rules": [],
            "ip_tables_rules": [],
            "caps": [
                "write",
                "provision"
            ]
        },
        'ruleset_created': {
            "href": "/orgs/1/sec_policy/draft/rule_sets/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "name": "NEW-RULESET",
            "enabled": True,
            "description": "",
            "caps": [
                "write",
                "provision"
            ]
        },
        'create_rule': {
            "href": "/orgs/1/sec_policy/draft/rule_sets/1/sec_rules/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "update_type": "create",
            "enabled": True,
            "sec_connect": False,
            "stateless": False,
            "machine_auth": False,
            "unscoped_consumers": False,
            "network_type": "brn",
        },
        'rule_created': {
            "href": "/orgs/1/sec_policy/draft/rule_sets/1/sec_rules/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "update_type": "create",
            "enabled": True,
            "providers": [
                {
                    "virtual_service": {
                        "href": "/orgs/1/sec_policy/active/virtual_services/14d7ff69-2fa4-458b-a299-e3f11ffa9b01"
                    }
                }
            ],
            "consumers": [
                {
                    "ip_list": {
                        "href": "/orgs/1/sec_policy/active/ip_lists/1"
                    }
                }
            ],
            "ingress_services": [],
            "sec_connect": False,
            "stateless": False,
            "machine_auth": False,
            "unscoped_consumers": False,
            "network_type": "brn",
            "resolve_labels_as": {
                "providers": ["virtual_services"],
                "consumers": ["workloads"]
            }
        },
        'rule_existing': {
            "href": "/orgs/1/sec_policy/draft/rule_sets/1/sec_rules/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "update_type": "create",
            "enabled": True,
            "providers": [
                {
                    "virtual_service": {
                        "href": "/orgs/1/sec_policy/active/virtual_services/14d7ff69-2fa4-458b-a299-e3f11ffa9b01"
                    }
                }
            ],
            "consumers": [
                {
                    "ip_list": {
                        "href": "/orgs/1/sec_policy/active/ip_lists/1"
                    }
                }
            ],
            "ingress_services": [],
            "sec_connect": False,
            "stateless": False,
            "machine_auth": False,
            "unscoped_consumers": False,
            "network_type": "brn",
            "resolve_labels_as": {
                "providers": ["virtual_services"],
                "consumers": ["workloads"]
            }
        },
        'list_service_bindings': [
            {
                "href": "/orgs/1/service_bindings/1c2f1b30-1e4d-40de-b6bb-f4cc947b1292",
                "workload": {
                    "href": "/orgs/1/workloads/1f28c4e8-64ec-48b9-aa25-27611b7210f6",
                    "name": "workload-1",
                    "hostname": "workload-1",
                    "deleted": False
                },
                "port_overrides": [],
                "virtual_service": {
                    "href": "/orgs/1/sec_policy/active/virtual_services/1f881961-e6a3-4640-a277-0dac3ededd95"
                }
            }
        ],
        'create_service_binding': [
            {"status": "created", "href": "/orgs/1/service_bindings/b4fc6146-765b-47fe-b22a-45f99fecc8b9"}
        ],
        'service_binding_existing': {
            "errors": [
                {"error": "uniqueness_failure"}
            ],
            "service_bindings": []
        },
        'service_binding_created': {
            "errors": [],
            "service_bindings": [
                {"href": "/orgs/1/service_bindings/b4fc6146-765b-47fe-b22a-45f99fecc8b9"}
            ]
        },
        'list_virtual_services': [
            {
                "href": "/orgs/1/sec_policy/active/virtual_services/53c68060-3099-45c0-8004-7b0d9a3eaaac",
                "created_at": "2021-12-07T22:28:09.136Z",
                "updated_at": "2021-12-07T22:28:09.136Z",
                "deleted_at": None,
                "created_by": {
                    "href": "/users/1"
                },
                "updated_by": {
                    "href": "/users/1"
                },
                "deleted_by": None,
                "name": "VS-IBM-SOAR-3389-TCP",
                "description": None,
                "pce_fqdn": None,
                "service_ports": [
                    {
                        "port": 3389,
                        "proto": 6
                    }
                ],
                "service_addresses": [],
                "labels": [],
                "ip_overrides": [],
                "apply_to": "host_only",
                "caps": [
                    "write",
                    "provision",
                    "delete"
                ]
            }
        ],
        'create_virtual_service': {
            "href": "/orgs/1/sec_policy/draft/virtual_services/14d7ff69-2fa4-458b-a299-e3f11ffa9b01",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "apply_to": "host_only",
            "caps": [
                "write",
                "provision",
                "delete"
            ]
        },
        'virtual_service_existing': {
            "href": "/orgs/1/sec_policy/active/virtual_services/53c68060-3099-45c0-8004-7b0d9a3eaaac",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "name": "VS-IBM-SOAR-3389-TCP",
            "service_ports": [
                {
                    "port": 3389,
                    "proto": 6
                }
            ],
            "service_addresses": [],
            "labels": [],
            "ip_overrides": [],
            "apply_to": "host_only",
            "caps": [
                "write",
                "provision",
                "delete"
            ]
        },
        'virtual_service_created': {
            "href": "/orgs/1/sec_policy/draft/virtual_services/14d7ff69-2fa4-458b-a299-e3f11ffa9b01",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/1"
            },
            "updated_by": {
                "href": "/users/1"
            },
            "name": "NEW-VIRTUAL-SERVICE",
            "service_ports": [
                {
                    "port": 3389,
                    "proto": 6
                }
            ],
            "apply_to": "host_only",
            "caps": [
                "write",
                "provision",
                "delete"
            ]
        },
        'list_ip_lists': [
            {
                "href": "/orgs/1/sec_policy/active/ip_lists/1",
                "created_at": "2021-12-07T22:28:09.136Z",
                "updated_at": "2021-12-07T22:28:09.136Z",
                "deleted_at": None,
                "created_by": {
                    "href": "/users/0"
                },
                "updated_by": {
                    "href": "/users/0"
                },
                "deleted_by": None,
                "name": "Any (0.0.0.0/0 and ::/0)",
                "ip_ranges": [
                    {
                        "from_ip": "0.0.0.0/0",
                        "exclusion": False
                    },
                    {
                        "from_ip": "::/0",
                        "exclusion": False
                    }
                ],
                "fqdns": []
            },
            {
                "href": "/orgs/28/sec_policy/draft/ip_lists/2335",
                "name": "IPL-LAB",
                "description": "",
                "created_at": "2022-03-10T04:33:50.982Z",
                "updated_at": "2022-03-10T04:33:50.989Z",
                "update_type": "create",
                "created_by": {
                    "href": "/users/520"
                },
                "updated_by": {
                    "href": "/users/520"
                },
                "ip_ranges": [
                    {
                        "from_ip": "10.2.24.0/28",
                        "exclusion": False
                    },
                    {
                        "from_ip": "10.8.16.192",
                        "to_ip": "10.8.16.212",
                        "exclusion": False
                    },
                    {
                        "from_ip": "10.10.0.146",
                        "exclusion": False
                    }
                ],
                "fqdns": [
                    {
                        "fqdn": "ibmsoar.lab.com"
                    },
                    {
                        "fqdn": "apphost.lab.com"
                    }
                ]
            }
        ],
        'create_ip_list': {
            "href": "/orgs/28/sec_policy/draft/ip_lists/12345",
            "name": "IPL-IBM-SOAR",
            "description": "",
            "created_at": "2022-03-10T04:33:50.982Z",
            "updated_at": "2022-03-10T04:33:50.989Z",
            "update_type": "create",
            "created_by": {
                "href": "/users/520"
            },
            "updated_by": {
                "href": "/users/520"
            },
            "ip_ranges": [
                {
                    "from_ip": "127.0.0.1",
                    "exclusion": False
                }
            ],
            "fqdns": [
                {
                    "fqdn": "localhost"
                }
            ]
        },
        'ip_list_existing': {
            "href": "/orgs/28/sec_policy/draft/ip_lists/2335",
            "name": "IPL-LAB",
            "description": "",
            "created_at": "2022-03-10T04:33:50.982Z",
            "updated_at": "2022-03-10T04:33:50.989Z",
            "update_type": "create",
            "created_by": {
                "href": "/users/520"
            },
            "updated_by": {
                "href": "/users/520"
            },
            "ip_ranges": [
                {
                    "from_ip": "10.2.24.0/28",
                    "exclusion": False
                },
                {
                    "from_ip": "10.8.16.192",
                    "to_ip": "10.8.16.212",
                    "exclusion": False
                },
                {
                    "from_ip": "10.10.0.146",
                    "exclusion": False
                }
            ],
            "fqdns": [
                {
                    "fqdn": "ibmsoar.lab.com"
                },
                {
                    "fqdn": "apphost.lab.com"
                }
            ]
        },
        'ip_list_created': {
            "href": "/orgs/28/sec_policy/draft/ip_lists/12345",
            "name": "IPL-IBM-SOAR",
            "description": "",
            "created_at": "2022-03-10T04:33:50.982Z",
            "updated_at": "2022-03-10T04:33:50.989Z",
            "update_type": "create",
            "created_by": {
                "href": "/users/520"
            },
            "updated_by": {
                "href": "/users/520"
            },
            "ip_ranges": [
                {
                    "from_ip": "127.0.0.1",
                    "exclusion": False
                }
            ],
            "fqdns": [
                {
                    "fqdn": "localhost"
                }
            ]
        },
        'ip_list_matching_by_href': {
            "href": "/orgs/1/sec_policy/active/ip_lists/1",
            "created_at": "2021-12-07T22:28:09.136Z",
            "updated_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/users/0"
            },
            "updated_by": {
                "href": "/users/0"
            },
            "name": "Any (0.0.0.0/0 and ::/0)",
            "ip_ranges": [
                {
                    "from_ip": "0.0.0.0/0",
                    "exclusion": False
                },
                {
                    "from_ip": "::/0",
                    "exclusion": False
                }
            ],
            "fqdns": []
        },
        'ip_lists_matching_by_name': [
            {
                "href": "/orgs/1/sec_policy/active/ip_lists/1",
                "created_at": "2021-12-07T22:28:09.136Z",
                "updated_at": "2021-12-07T22:28:09.136Z",
                "created_by": {
                    "href": "/users/0"
                },
                "updated_by": {
                    "href": "/users/0"
                },
                "name": "Any (0.0.0.0/0 and ::/0)",
                "ip_ranges": [
                    {
                        "from_ip": "0.0.0.0/0",
                        "exclusion": False
                    },
                    {
                        "from_ip": "::/0",
                        "exclusion": False
                    }
                ],
                "fqdns": []
            }
        ],
        'ip_lists_matching_by_ip_address': [
            {
                "href": "/orgs/1/sec_policy/active/ip_lists/1",
                "created_at": "2021-12-07T22:28:09.136Z",
                "updated_at": "2021-12-07T22:28:09.136Z",
                "created_by": {
                    "href": "/users/0"
                },
                "updated_by": {
                    "href": "/users/0"
                },
                "name": "Any (0.0.0.0/0 and ::/0)",
                "ip_ranges": [
                    {
                        "from_ip": "0.0.0.0/0",
                        "exclusion": False
                    },
                    {
                        "from_ip": "::/0",
                        "exclusion": False
                    }
                ],
                "fqdns": []
            },
            {
                "href": "/orgs/28/sec_policy/draft/ip_lists/2335",
                "name": "IPL-LAB",
                "description": "",
                "created_at": "2022-03-10T04:33:50.982Z",
                "updated_at": "2022-03-10T04:33:50.989Z",
                "update_type": "create",
                "created_by": {
                    "href": "/users/520"
                },
                "updated_by": {
                    "href": "/users/520"
                },
                "ip_ranges": [
                    {
                        "from_ip": "10.2.24.0/28",
                        "exclusion": False
                    },
                    {
                        "from_ip": "10.8.16.192",
                        "to_ip": "10.8.16.212",
                        "exclusion": False
                    },
                    {
                        "from_ip": "10.10.0.146",
                        "exclusion": False
                    }
                ],
                "fqdns": [
                    {
                        "fqdn": "ibmsoar.lab.com"
                    },
                    {
                        "fqdn": "apphost.lab.com"
                    }
                ]
            }
        ],
        'ip_lists_matching_by_fqdn': [
            {
                "href": "/orgs/28/sec_policy/draft/ip_lists/2335",
                "name": "IPL-LAB",
                "description": "",
                "created_at": "2022-03-10T04:33:50.982Z",
                "updated_at": "2022-03-10T04:33:50.989Z",
                "update_type": "create",
                "created_by": {
                    "href": "/users/520"
                },
                "updated_by": {
                    "href": "/users/520"
                },
                "ip_ranges": [
                    {
                        "from_ip": "10.2.24.0/28",
                        "exclusion": False
                    },
                    {
                        "from_ip": "10.8.16.192",
                        "to_ip": "10.8.16.212",
                        "exclusion": False
                    },
                    {
                        "from_ip": "10.10.0.146",
                        "exclusion": False
                    }
                ],
                "fqdns": [
                    {
                        "fqdn": "ibmsoar.lab.com"
                    },
                    {
                        "fqdn": "apphost.lab.com"
                    }
                ]
            }
        ],
        'list_workloads': [
            {
                "href": "/orgs/1/workloads/de5c75c5-b293-4dbd-a6c0-124b8a43a589",
                "deleted": False,
                "name": None,
                "description": None,
                "hostname": "test-workload-01",
                "service_principal_name": None,
                "public_ip": "192.168.147.220",
                "distinguished_name": None,
                "enforcement_mode": "selective",
                "visibility_level": "flow_summary",
                "agent_to_pce_certificate_authentication_id": None,
                "external_data_set": None,
                "external_data_reference": None,
                "interfaces": [
                    {
                        "name": "eth0",
                        "cidr_block": 64,
                        "link_state": None,
                        "network_detection_mode": "single_private_brn",
                        "friendly_name": None,
                        "network": {
                            "href": "/orgs/1/networks/04ac9819-d438-42b6-b892-2968e32ca255"
                        },
                        "loopback": False,
                        "address": "fd00::200:a:0:b9a4",
                        "default_gateway_address": None
                    },
                    {
                        "name": "eth0",
                        "cidr_block": 8,
                        "link_state": None,
                        "network_detection_mode": "single_private_brn",
                        "friendly_name": None,
                        "network": {
                            "href": "/orgs/1/networks/6736f2b5-b8a4-4db0-8df2-42508f815c1f"
                        },
                        "loopback": False,
                        "address": "10.0.185.164",
                        "default_gateway_address": "10.0.0.1"
                    }
                ],
                "ignored_interface_names": [],
                "service_provider": None,
                "data_center": None,
                "data_center_zone": None,
                "os_id": "ubuntu-x86_64-xenial",
                "os_detail": "4.4.0-97-generic #120-Ubuntu SMP Tue Sep 19 17:28:18 UTC 2017 (Ubuntu 16.04.1 LTS)",
                "online": True,
                "labels": [],
                "services": {
                    "uptime_seconds": 371506,
                    "created_at": "2021-12-07T22:28:09.136Z",
                    "open_service_ports": [
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 25,
                            "process_name": "postfix",
                            "user": "root",
                            "package": None,
                            "win_service_name": None
                        },
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 161,
                            "process_name": "snmpd",
                            "user": "root",
                            "package": None,
                            "win_service_name": None
                        },
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 53,
                            "process_name": "bind",
                            "user": "root",
                            "package": None,
                            "win_service_name": None
                        },
                        {
                            "protocol": 17,
                            "address": "0.0.0.0",
                            "port": 67,
                            "process_name": "dhcpd",
                            "user": "root",
                            "package": None,
                            "win_service_name": None
                        },
                        {
                            "protocol": 17,
                            "address": "0.0.0.0",
                            "port": 123,
                            "process_name": "ntpd",
                            "user": "root",
                            "package": None,
                            "win_service_name": None
                        }
                    ]
                },
                "num_enforcement_boundaries": 5,
                "selectively_enforced_services": [
                    {
                        "href": "/orgs/1/sec_policy/draft/services/3"
                    },
                    {
                        "href": "/orgs/1/sec_policy/draft/services/1"
                    },
                    {
                        "port": 3389,
                        "proto": 6
                    },
                    {
                        "port": 1234,
                        "proto": 6
                    }
                ],
                "containers_inherit_host_policy": False,
                "blocked_connection_action": "drop",
                "agent": {
                    "config": {
                        "log_traffic": False,
                        "visibility_level": "flow_summary",
                        "mode": "selective",
                        "security_policy_update_mode": "adaptive"
                    },
                    "secure_connect": {
                        "matching_issuer_name": ""
                    },
                    "href": "/orgs/1/agents/47524",
                    "status": {
                        "uid": None,
                        "instance_id": None,
                        "managed_since": "2021-12-07T22:28:09.136Z",
                        "fw_config_current": False,
                        "firewall_rule_count": 0,
                        "security_policy_refresh_at": None,
                        "security_policy_applied_at": None,
                        "security_policy_received_at": None,
                        "status": "active",
                        "agent_version": "20.2.0",
                        "agent_health_errors": {
                            "errors": [],
                            "warnings": []
                        },
                        "agent_health": [],
                        "last_heartbeat_on": "2021-12-07T22:28:09.136Z",
                        "uptime_seconds": 371506,
                        "security_policy_sync_state": "syncing"
                    },
                    "active_pce_fqdn": None,
                    "target_pce_fqdn": None,
                    "type": "Host",
                    "unpair_allowed": True
                },
                "ven": {
                    "href": "/orgs/1/vens/de5c75c5-b293-4dbd-a6c0-124b8a43a589"
                },
                "ike_authentication_certificate": None,
                "created_at": "2020-10-22T00:01:29.614Z",
                "created_by": {
                    "href": "/orgs/1/agents/47524"
                },
                "updated_at": "2021-12-07T18:53:53.305Z",
                "updated_by": {
                    "href": "/users/1"
                },
                "caps": [
                    "write"
                ],
                "container_cluster": None
            },
            {
                "href": "/orgs/1/workloads/ef7f0f53-2295-4416-aaaf-965146934c53",
                "deleted": False,
                "name": None,
                "description": None,
                "hostname": "test-workload-02",
                "service_principal_name": None,
                "public_ip": "192.168.147.220",
                "distinguished_name": None,
                "enforcement_mode": "selective",
                "visibility_level": "flow_summary",
                "agent_to_pce_certificate_authentication_id": None,
                "external_data_set": None,
                "external_data_reference": None,
                "interfaces": [
                    {
                        "name": "eth0",
                        "cidr_block": 64,
                        "link_state": None,
                        "network_detection_mode": "single_private_brn",
                        "friendly_name": None,
                        "network": {
                            "href": "/orgs/1/networks/04ac9819-d438-42b6-b892-2968e32ca255"
                        },
                        "loopback": False,
                        "address": "fd00::200:a:0:ba74",
                        "default_gateway_address": None
                    },
                    {
                        "name": "eth0",
                        "cidr_block": 8,
                        "link_state": None,
                        "network_detection_mode": "single_private_brn",
                        "friendly_name": None,
                        "network": {
                            "href": "/orgs/1/networks/6736f2b5-b8a4-4db0-8df2-42508f815c1f"
                        },
                        "loopback": False,
                        "address": "10.0.186.116",
                        "default_gateway_address": "10.0.0.1"
                    }
                ],
                "ignored_interface_names": [],
                "service_provider": None,
                "data_center": None,
                "data_center_zone": None,
                "os_id": "ubuntu-x86_64-xenial",
                "os_detail": "4.4.0-97-generic #120-Ubuntu SMP Tue Sep 19 17:28:18 UTC 2017 (Ubuntu 16.04.1 LTS)",
                "online": True,
                "labels": [],
                "services": {
                    "uptime_seconds": 791004,
                    "created_at": "2021-12-07T22:28:09.136Z",
                    "open_service_ports": [
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 161,
                            "process_name": "snmpd",
                            "user": "root",
                            "package": None,
                            "win_service_name": None
                        },
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 8080,
                            "process_name": "app_server",
                            "user": "root",
                            "package": None,
                            "win_service_name": None
                        }
                    ]
                },
                "num_enforcement_boundaries": 5,
                "selectively_enforced_services": [
                    {
                        "href": "/orgs/1/sec_policy/draft/services/3"
                    },
                    {
                        "href": "/orgs/1/sec_policy/draft/services/1"
                    },
                    {
                        "port": 3389,
                        "proto": 6
                    },
                    {
                        "port": 1234,
                        "proto": 6
                    }
                ],
                "containers_inherit_host_policy": False,
                "blocked_connection_action": "drop",
                "agent": {
                    "config": {
                        "log_traffic": False,
                        "visibility_level": "flow_summary",
                        "mode": "selective",
                        "security_policy_update_mode": "adaptive"
                    },
                    "secure_connect": {
                        "matching_issuer_name": ""
                    },
                    "href": "/orgs/1/agents/1",
                    "status": {
                        "uid": None,
                        "instance_id": None,
                        "managed_since": "2021-12-07T22:28:09.136Z",
                        "fw_config_current": False,
                        "firewall_rule_count": 0,
                        "security_policy_refresh_at": None,
                        "security_policy_applied_at": None,
                        "security_policy_received_at": None,
                        "status": "active",
                        "agent_version": "20.2.0",
                        "agent_health_errors": {
                            "errors": [],
                            "warnings": []
                        },
                        "agent_health": [],
                        "last_heartbeat_on": "2021-12-07T22:28:09.136Z",
                        "uptime_seconds": 791004,
                        "security_policy_sync_state": "syncing"
                    },
                    "active_pce_fqdn": None,
                    "target_pce_fqdn": None,
                    "type": "Host",
                    "unpair_allowed": True
                },
                "ven": {
                    "href": "/orgs/1/vens/ef7f0f53-2295-4416-aaaf-965146934c53"
                },
                "ike_authentication_certificate": None,
                "created_at": "2021-12-07T22:28:09.136Z",
                "created_by": {
                    "href": "/orgs/1/agents/1"
                },
                "updated_at": "2021-12-07T18:53:43.215Z",
                "updated_by": {
                    "href": "/users/1"
                },
                "caps": [
                    "write"
                ],
                "container_cluster": None
            }
        ],
        'workload_existing': {
            "href": "/orgs/1/workloads/ef7f0f53-2295-4416-aaaf-965146934c53",
            "deleted": False,
            "hostname": "test-workload-02",
            "public_ip": "192.168.147.220",
            "enforcement_mode": "selective",
            "visibility_level": "flow_summary",
            "interfaces": [
                {
                    "name": "eth0",
                    "cidr_block": 64,
                    "network_detection_mode": "single_private_brn",
                    "network": {
                        "href": "/orgs/1/networks/04ac9819-d438-42b6-b892-2968e32ca255"
                    },
                    "loopback": False,
                    "address": "fd00::200:a:0:ba74",
                },
                {
                    "name": "eth0",
                    "cidr_block": 8,
                    "network_detection_mode": "single_private_brn",
                    "network": {
                        "href": "/orgs/1/networks/6736f2b5-b8a4-4db0-8df2-42508f815c1f"
                    },
                    "loopback": False,
                    "address": "10.0.186.116",
                    "default_gateway_address": "10.0.0.1"
                }
            ],
            "labels": [],
            "ignored_interface_names": [],
            "os_id": "ubuntu-x86_64-xenial",
            "os_detail": "4.4.0-97-generic #120-Ubuntu SMP Tue Sep 19 17:28:18 UTC 2017 (Ubuntu 16.04.1 LTS)",
            "online": True,
            "services": {
                "uptime_seconds": 791004,
                "created_at": "2021-12-07T22:28:09.136Z",
                "open_service_ports": [
                    {
                        "protocol": 6,
                        "address": "0.0.0.0",
                        "port": 161,
                        "process_name": "snmpd",
                        "user": "root",
                    },
                    {
                        "protocol": 6,
                        "address": "0.0.0.0",
                        "port": 8080,
                        "process_name": "app_server",
                        "user": "root",
                    }
                ]
            },
            "num_enforcement_boundaries": 5,
            "selectively_enforced_services": [
                {
                    "href": "/orgs/1/sec_policy/draft/services/3"
                },
                {
                    "href": "/orgs/1/sec_policy/draft/services/1"
                },
                {
                    "port": 3389,
                    "proto": 6
                },
                {
                    "port": 1234,
                    "proto": 6
                }
            ],
            "containers_inherit_host_policy": False,
            "blocked_connection_action": "drop",
            "agent": {
                "config": {
                    "log_traffic": False,
                    "visibility_level": "flow_summary",
                    "mode": "selective",
                    "security_policy_update_mode": "adaptive"
                },
                "secure_connect": {
                    "matching_issuer_name": ""
                },
                "href": "/orgs/1/agents/1",
                "status": {
                    "managed_since": "2021-12-07T22:28:09.136Z",
                    "fw_config_current": False,
                    "firewall_rule_count": 0,
                    "status": "active",
                    "agent_version": "20.2.0",
                    "agent_health": [],
                    "agent_health_errors": {
                        "errors": [],
                        "warnings": []
                    },
                    "last_heartbeat_on": "2021-12-07T22:28:09.136Z",
                    "uptime_seconds": 791004,
                    "security_policy_sync_state": "syncing"
                },
                "type": "Host",
                "unpair_allowed": True
            },
            "ven": {
                "href": "/orgs/1/vens/ef7f0f53-2295-4416-aaaf-965146934c53"
            },
            "created_at": "2021-12-07T22:28:09.136Z",
            "created_by": {
                "href": "/orgs/1/agents/1"
            },
            "updated_at": "2021-12-07T18:53:43.215Z",
            "updated_by": {
                "href": "/users/1"
            },
            "caps": [
                "write"
            ]
        },
        'workloads_matching': [
            {
                "href": "/orgs/1/workloads/de5c75c5-b293-4dbd-a6c0-124b8a43a589",
                "deleted": False,
                "hostname": "test-workload-01",
                "public_ip": "192.168.147.220",
                "enforcement_mode": "selective",
                "visibility_level": "flow_summary",
                "interfaces": [
                    {
                        "name": "eth0",
                        "cidr_block": 64,
                        "network_detection_mode": "single_private_brn",
                        "network": {
                            "href": "/orgs/1/networks/04ac9819-d438-42b6-b892-2968e32ca255"
                        },
                        "loopback": False,
                        "address": "fd00::200:a:0:b9a4",
                    },
                    {
                        "name": "eth0",
                        "cidr_block": 8,
                        "network_detection_mode": "single_private_brn",
                        "network": {
                            "href": "/orgs/1/networks/6736f2b5-b8a4-4db0-8df2-42508f815c1f"
                        },
                        "loopback": False,
                        "address": "10.0.185.164",
                        "default_gateway_address": "10.0.0.1"
                    }
                ],
                "labels": [],
                "ignored_interface_names": [],
                "os_id": "ubuntu-x86_64-xenial",
                "os_detail": "4.4.0-97-generic #120-Ubuntu SMP Tue Sep 19 17:28:18 UTC 2017 (Ubuntu 16.04.1 LTS)",
                "online": True,
                "services": {
                    "uptime_seconds": 371506,
                    "created_at": "2021-12-07T22:28:09.136Z",
                    "open_service_ports": [
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 25,
                            "process_name": "postfix",
                            "user": "root"
                        },
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 161,
                            "process_name": "snmpd",
                            "user": "root"
                        },
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 53,
                            "process_name": "bind",
                            "user": "root"
                        },
                        {
                            "protocol": 17,
                            "address": "0.0.0.0",
                            "port": 67,
                            "process_name": "dhcpd",
                            "user": "root"
                        },
                        {
                            "protocol": 17,
                            "address": "0.0.0.0",
                            "port": 123,
                            "process_name": "ntpd",
                            "user": "root"
                        }
                    ]
                },
                "num_enforcement_boundaries": 5,
                "selectively_enforced_services": [
                    {
                        "href": "/orgs/1/sec_policy/draft/services/3"
                    },
                    {
                        "href": "/orgs/1/sec_policy/draft/services/1"
                    },
                    {
                        "port": 3389,
                        "proto": 6
                    },
                    {
                        "port": 1234,
                        "proto": 6
                    }
                ],
                "containers_inherit_host_policy": False,
                "blocked_connection_action": "drop",
                "agent": {
                    "config": {
                        "log_traffic": False,
                        "visibility_level": "flow_summary",
                        "mode": "selective",
                        "security_policy_update_mode": "adaptive"
                    },
                    "secure_connect": {
                        "matching_issuer_name": ""
                    },
                    "href": "/orgs/1/agents/47524",
                    "status": {
                        "managed_since": "2021-12-07T22:28:09.136Z",
                        "fw_config_current": False,
                        "firewall_rule_count": 0,
                        "status": "active",
                        "agent_version": "20.2.0",
                        "agent_health": [],
                        "agent_health_errors": {
                            "errors": [],
                            "warnings": []
                        },
                        "last_heartbeat_on": "2021-12-07T22:28:09.136Z",
                        "uptime_seconds": 371506,
                        "security_policy_sync_state": "syncing"
                    },
                    "type": "Host",
                    "unpair_allowed": True
                },
                "ven": {
                    "href": "/orgs/1/vens/de5c75c5-b293-4dbd-a6c0-124b8a43a589"
                },
                "created_at": "2020-10-22T00:01:29.614Z",
                "created_by": {
                    "href": "/orgs/1/agents/47524"
                },
                "updated_at": "2021-12-07T18:53:53.305Z",
                "updated_by": {
                    "href": "/users/1"
                },
                "caps": [
                    "write"
                ]
            },
            {
                "href": "/orgs/1/workloads/ef7f0f53-2295-4416-aaaf-965146934c53",
                "deleted": False,
                "hostname": "test-workload-02",
                "public_ip": "192.168.147.220",
                "enforcement_mode": "selective",
                "visibility_level": "flow_summary",
                "interfaces": [
                    {
                        "name": "eth0",
                        "cidr_block": 64,
                        "network_detection_mode": "single_private_brn",
                        "network": {
                            "href": "/orgs/1/networks/04ac9819-d438-42b6-b892-2968e32ca255"
                        },
                        "loopback": False,
                        "address": "fd00::200:a:0:ba74",
                    },
                    {
                        "name": "eth0",
                        "cidr_block": 8,
                        "network_detection_mode": "single_private_brn",
                        "network": {
                            "href": "/orgs/1/networks/6736f2b5-b8a4-4db0-8df2-42508f815c1f"
                        },
                        "loopback": False,
                        "address": "10.0.186.116",
                        "default_gateway_address": "10.0.0.1"
                    }
                ],
                "labels": [],
                "ignored_interface_names": [],
                "os_id": "ubuntu-x86_64-xenial",
                "os_detail": "4.4.0-97-generic #120-Ubuntu SMP Tue Sep 19 17:28:18 UTC 2017 (Ubuntu 16.04.1 LTS)",
                "online": True,
                "services": {
                    "uptime_seconds": 791004,
                    "created_at": "2021-12-07T22:28:09.136Z",
                    "open_service_ports": [
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 161,
                            "process_name": "snmpd",
                            "user": "root",
                        },
                        {
                            "protocol": 6,
                            "address": "0.0.0.0",
                            "port": 8080,
                            "process_name": "app_server",
                            "user": "root",
                        }
                    ]
                },
                "num_enforcement_boundaries": 5,
                "selectively_enforced_services": [
                    {
                        "href": "/orgs/1/sec_policy/draft/services/3"
                    },
                    {
                        "href": "/orgs/1/sec_policy/draft/services/1"
                    },
                    {
                        "port": 3389,
                        "proto": 6
                    },
                    {
                        "port": 1234,
                        "proto": 6
                    }
                ],
                "containers_inherit_host_policy": False,
                "blocked_connection_action": "drop",
                "agent": {
                    "config": {
                        "log_traffic": False,
                        "visibility_level": "flow_summary",
                        "mode": "selective",
                        "security_policy_update_mode": "adaptive"
                    },
                    "secure_connect": {
                        "matching_issuer_name": ""
                    },
                    "href": "/orgs/1/agents/1",
                    "status": {
                        "managed_since": "2021-12-07T22:28:09.136Z",
                        "fw_config_current": False,
                        "firewall_rule_count": 0,
                        "status": "active",
                        "agent_version": "20.2.0",
                        "agent_health": [],
                        "agent_health_errors": {
                            "errors": [],
                            "warnings": []
                        },
                        "last_heartbeat_on": "2021-12-07T22:28:09.136Z",
                        "uptime_seconds": 791004,
                        "security_policy_sync_state": "syncing"
                    },
                    "type": "Host",
                    "unpair_allowed": True
                },
                "ven": {
                    "href": "/orgs/1/vens/ef7f0f53-2295-4416-aaaf-965146934c53"
                },
                "created_at": "2021-12-07T22:28:09.136Z",
                "created_by": {
                    "href": "/orgs/1/agents/1"
                },
                "updated_at": "2021-12-07T18:53:43.215Z",
                "updated_by": {
                    "href": "/users/1"
                },
                "caps": [
                    "write"
                ]
            }
        ],
        'provisioned_hrefs': [
            "/orgs/1/sec_policy/active/enforcement_boundaries/1",
            "/orgs/1/sec_policy/active/rule_sets/1"
        ],
        'list_traffic_flows': [
            {
                "src": {
                    "ip": "45.227.254.26"
                },
                "dst": {
                    "ip": "10.1.100.43",
                    "workload": {
                        "hostname": "windows-jumpbox-1",
                        "name": None,
                        "href": "/orgs/47/workloads/9c8b69b9-c741-4689-b8c7-f8ebee0dbee8",
                        "os_type": "windows",
                        "labels": [
                            {
                                "href": "/orgs/47/labels/15415",
                                "key": "app",
                                "value": "Administration"
                            },
                            {
                                "href": "/orgs/47/labels/15411",
                                "key": "env",
                                "value": "Production"
                            },
                            {
                                "href": "/orgs/47/labels/15412",
                                "key": "loc",
                                "value": "Dallas"
                            },
                            {
                                "href": "/orgs/47/labels/15416",
                                "key": "role",
                                "value": "Jump Server"
                            }
                        ]
                    }
                },
                "service": {
                    "port": 3389,
                    "proto": 6,
                    "windows_service_name": "TermService",
                    "process_name": "svchost.exe",
                    "user_name": "NETWORK SERVICE"
                },
                "num_connections": 5725,
                "policy_decision": "potentially_blocked",
                "state": "timed out",
                "flow_direction": "inbound",
                "dst_bi": 0,
                "dst_bo": 0,
                "timestamp_range": {
                    "last_detected": "2021-12-15T23:37:53Z",
                    "first_detected": "2021-12-09T18:46:50Z"
                }
            },
            {
                "src": {
                    "ip": "194.165.16.78"
                },
                "dst": {
                    "ip": "10.1.100.43",
                    "workload": {
                        "hostname": "windows-jumpbox-1",
                        "name": None,
                        "href": "/orgs/47/workloads/9c8b69b9-c741-4689-b8c7-f8ebee0dbee8",
                        "os_type": "windows",
                        "labels": [
                            {
                                "href": "/orgs/47/labels/15415",
                                "key": "app",
                                "value": "Administration"
                            },
                            {
                                "href": "/orgs/47/labels/15411",
                                "key": "env",
                                "value": "Production"
                            },
                            {
                                "href": "/orgs/47/labels/15412",
                                "key": "loc",
                                "value": "Dallas"
                            },
                            {
                                "href": "/orgs/47/labels/15416",
                                "key": "role",
                                "value": "Jump Server"
                            }
                        ]
                    }
                },
                "service": {
                    "port": 3389,
                    "proto": 6,
                    "windows_service_name": "TermService",
                    "process_name": "svchost.exe",
                    "user_name": "NETWORK SERVICE"
                },
                "num_connections": 7350,
                "policy_decision": "potentially_blocked",
                "state": "timed out",
                "flow_direction": "inbound",
                "dst_bi": 0,
                "dst_bo": 0,
                "timestamp_range": {
                    "last_detected": "2021-12-16T20:57:03Z",
                    "first_detected": "2021-12-09T19:37:07Z"
                }
            }
        ],
        'traffic_flows_matching': [
            {
                "src": {
                    "ip": "45.227.254.26"
                },
                "dst": {
                    "ip": "10.1.100.43",
                    "workload": {
                        "hostname": "windows-jumpbox-1",
                        "href": "/orgs/47/workloads/9c8b69b9-c741-4689-b8c7-f8ebee0dbee8",
                        "os_type": "windows",
                        "labels": [
                            {
                                "href": "/orgs/47/labels/15415",
                                "key": "app",
                                "value": "Administration"
                            },
                            {
                                "href": "/orgs/47/labels/15411",
                                "key": "env",
                                "value": "Production"
                            },
                            {
                                "href": "/orgs/47/labels/15412",
                                "key": "loc",
                                "value": "Dallas"
                            },
                            {
                                "href": "/orgs/47/labels/15416",
                                "key": "role",
                                "value": "Jump Server"
                            }
                        ]
                    }
                },
                "service": {
                    "port": 3389,
                    "proto": 6,
                    "windows_service_name": "TermService",
                    "process_name": "svchost.exe",
                    "user_name": "NETWORK SERVICE"
                },
                "num_connections": 5725,
                "policy_decision": "potentially_blocked",
                "state": "timed out",
                "flow_direction": "inbound",
                "dst_bi": 0,
                "dst_bo": 0,
                "timestamp_range": {
                    "last_detected": "2021-12-15T23:37:53Z",
                    "first_detected": "2021-12-09T18:46:50Z"
                }
            },
            {
                "src": {
                    "ip": "194.165.16.78"
                },
                "dst": {
                    "ip": "10.1.100.43",
                    "workload": {
                        "hostname": "windows-jumpbox-1",
                        "href": "/orgs/47/workloads/9c8b69b9-c741-4689-b8c7-f8ebee0dbee8",
                        "os_type": "windows",
                        "labels": [
                            {
                                "href": "/orgs/47/labels/15415",
                                "key": "app",
                                "value": "Administration"
                            },
                            {
                                "href": "/orgs/47/labels/15411",
                                "key": "env",
                                "value": "Production"
                            },
                            {
                                "href": "/orgs/47/labels/15412",
                                "key": "loc",
                                "value": "Dallas"
                            },
                            {
                                "href": "/orgs/47/labels/15416",
                                "key": "role",
                                "value": "Jump Server"
                            }
                        ]
                    }
                },
                "service": {
                    "port": 3389,
                    "proto": 6,
                    "windows_service_name": "TermService",
                    "process_name": "svchost.exe",
                    "user_name": "NETWORK SERVICE"
                },
                "num_connections": 7350,
                "policy_decision": "potentially_blocked",
                "state": "timed out",
                "flow_direction": "inbound",
                "dst_bi": 0,
                "dst_bo": 0,
                "timestamp_range": {
                    "last_detected": "2021-12-16T20:57:03Z",
                    "first_detected": "2021-12-09T19:37:07Z"
                }
            }
        ],
        'workloads_updated': ["/orgs/1/workloads/de5c75c5-b293-4dbd-a6c0-124b8a43a589"]
    }
    return responses[op]


def mocked_policy_compute_engine(*args, **kwargs):
    class MockResponse:
        def _find_matching_objects(self, params: dict, mock):
            objects = []
            for o in mock:
                matches = False
                for k, v in params.items():
                    if k in o:
                        if type(o[k]) is str:
                            # support partial matches for string values
                            if v in o[k]:
                                matches = True
                        elif o[k] == v:
                            matches = True
                if matches:
                    objects.append(o)
            return objects

        def get_enforcement_boundaries(self, params: dict, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params=params,
                mock=mock_results('list_enforcement_boundaries')
            )
            return [EnforcementBoundary.from_json(o) for o in matching_results]

        def get_enforcement_boundaries_by_name(self, name: str, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params={'name': name},
                mock=mock_results('list_enforcement_boundaries')
            )
            return [EnforcementBoundary.from_json(o) for o in matching_results]

        def create_enforcement_boundary(self, enforcement_boundary: EnforcementBoundary, *args, **kwargs):
            metadata = enforcement_boundary.to_json()
            return EnforcementBoundary.from_json({**metadata, **mock_results('create_enforcement_boundary')})

        def get_rulesets(self, params: dict, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params=params,
                mock=mock_results('list_rulesets')
            )
            return [Ruleset.from_json(o) for o in matching_results]

        def get_rulesets_by_name(self, name: str, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params={'name': name},
                mock=mock_results('list_rulesets')
            )
            return [Ruleset.from_json(o) for o in matching_results]

        def create_ruleset(self, ruleset: Ruleset, *args, **kwargs):
            metadata = ruleset.to_json()
            return Ruleset.from_json({**metadata, **mock_results('create_ruleset')})

        def create_rule(self, ruleset_href: str, rule: Rule, *args, **kwargs):
            metadata = rule.to_json()
            return Rule.from_json({**metadata, **mock_results('create_rule')})

        def create_service_bindings(self, service_bindings: List[ServiceBinding], *args, **kwargs):
            results = {'errors': [], 'service_bindings': []}

            for binding in service_bindings:
                if self._service_binding_exists(binding):
                    results['errors'].append({'error': 'uniqueness_failure'})
                else:
                    new_binding_href = mock_results('create_service_binding')[0]['href']
                    results['service_bindings'].append(ServiceBinding(href=new_binding_href))
            return results

        def _service_binding_exists(self, service_binding: ServiceBinding):
            for existing_binding in mock_results('list_service_bindings'):
                existing_binding = ServiceBinding.from_json(existing_binding)
                if (service_binding.virtual_service.href == existing_binding.virtual_service.href
                    and service_binding.workload.href == existing_binding.workload.href):
                    return True
            return False

        def get_virtual_services(self, params: dict, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params=params,
                mock=mock_results('list_virtual_services')
            )
            return [VirtualService.from_json(o) for o in matching_results]

        def get_virtual_services_by_name(self, name: str, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params={'name': name},
                mock=mock_results('list_virtual_services')
            )
            return [VirtualService.from_json(o) for o in matching_results]

        def create_virtual_service(self, virtual_service: VirtualService, *args, **kwargs):
            metadata = virtual_service.to_json()
            return VirtualService.from_json({**metadata, **mock_results('create_virtual_service')})

        def get_ip_list(self, href: str, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params={'href': href},
                mock=mock_results('list_ip_lists')
            )
            return IPList.from_json(matching_results[0] if matching_results else {})

        def get_ip_lists(self, params: dict, *args, **kwargs):
            ip_lists = mock_results('list_ip_lists')
            matching_results = self._find_matching_objects(
                params=params,
                mock=ip_lists
            )

            for ip_list in ip_lists:
                if 'ip_address' in params:
                    if self._check_ip_list_match(params['ip_address'], ip_list):
                        matching_results.append(ip_list)

                if 'fqdn' in params:
                    for fqdn_record in ip_list['fqdns']:
                        if params['fqdn'] in fqdn_record['fqdn']:
                            matching_results.append(ip_list)
                            break

            return [IPList.from_json(o) for o in matching_results]

        def _check_ip_list_match(self, address, ip_list):
            for ip_range_record in ip_list['ip_ranges']:
                from_ip = self._parse_ip(ip_range_record['from_ip'])
                to_ip = self._parse_ip(ip_range_record['to_ip']) if 'to_ip' in ip_range_record else None
                return self._compare_ip(from_ip, to_ip, address)

        def _parse_ip(self, address):
            if not address:
                return None
            return IPv4Network(address) if '/' in address else IPv4Address(address)

        def _compare_ip(self, from_ip, to_ip, address):
            address = IPv4Address(address)
            if type(from_ip) is IPv4Network:
                return address in from_ip
            if to_ip:
                return address >= from_ip and address <= to_ip
            return IPv4Address(address) == from_ip

        def get_ip_lists_by_name(self, name: str, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params={'name': name},
                mock=mock_results('list_ip_lists')
            )
            return [IPList.from_json(o) for o in matching_results]

        def create_ip_list(self, ip_list: IPList, *args, **kwargs):
            metadata = ip_list.to_json()
            return IPList.from_json({**metadata, **mock_results('create_ip_list')})

        def get_workload(self, workload_href: str, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params={'href': workload_href},
                mock=mock_results('list_workloads')
            )
            return Workload.from_json(matching_results[0] if matching_results else {})

        def get_workloads(self, params: dict, *args, **kwargs):
            matching_results = self._find_matching_objects(
                params=params,
                mock=mock_results('list_workloads')
            )
            return [Workload.from_json(o) for o in matching_results]

        def provision_policy_changes(self, change_description: str, hrefs: List, *args, **kwargs):
            pass  # noop

        def get_traffic_flows_async(self, query_name: str, traffic_query: TrafficQuery, *args, **kwargs):
            query_service_port = traffic_query.services.include[0].port
            matching_results = list(filter(lambda x: x['service']['port'] == query_service_port, mock_results('list_traffic_flows')))
            return [TrafficFlow.from_json(o) for o in matching_results]

        def update_workload_enforcement_modes(self, enforcement_mode: str, workloads: List[Workload], *args, **kwargs):
            errors = []
            matching_results = []
            for workload in workloads:
                matching_workloads = self._find_matching_objects(
                    params={'href': workload.href},
                    mock=mock_results('list_workloads')
                )
                if matching_workloads:
                    matching_results.append(workload)
                else:
                    errors.append("Invalid URI: {{{0}}}".format(workload.href))
            return {'errors': errors, 'workloads': matching_results}

    return MockResponse(*args, **kwargs)


def get_mock_config():
    config_data = u"""[fn_illumio]
illumio_pce_domain_name = test.pce.com
illumio_pce_port = 8443
illumio_pce_org_id = 1
illumio_pce_api_key = api_1a1a2233b45c678d9
illumio_pce_api_secret = 0a1bc2d3ef456789g87654h32i101j234k5l67m898n7o65p43q21r012s3t4u5v
# Optional proxy settings
http_proxy = http://proxy:80
https_proxy = http://proxy:80
"""
    return config_data
