# -*- coding: utf-8 -*-

"""Generate a default configuration-file section for fn_illumio"""


def config_section_data():
    """
    Produce add the default configuration section to app.config,
    for fn_illumio when called by `resilient-circuits config [-c|-u]`
    """
    config_data = u"""[fn_illumio]
illumio_pce_domain_name = <PCE_DOMAIN_NAME>
illumio_pce_port = 443
illumio_pce_org_id = 1
illumio_pce_api_key = <PCE_API_KEY>
illumio_pce_api_secret = <PCE_API_SECRET>
# Optional proxy settings
#http_proxy=http://proxy:80
#https_proxy=http://proxy:80
"""
    return config_data
