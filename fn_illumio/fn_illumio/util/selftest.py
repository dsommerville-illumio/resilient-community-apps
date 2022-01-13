# -*- coding: utf-8 -*-

"""
Function implementation test.
Usage:
    resilient-circuits selftest -l fn-illumio
    resilient-circuits selftest --print-env -l fn-illumio

Return examples:
    return {
        "state": "success",
        "reason": "Successful connection to third party endpoint"
    }

    return {
        "state": "failure",
        "reason": "Failed to connect to third party endpoint"
    }
"""

from fn_illumio.util.helper import IllumioHelper

import logging

log = logging.getLogger(__name__)
log.setLevel(logging.INFO)
log.addHandler(logging.StreamHandler())


def selftest_function(opts):
    """
    Placeholder for selftest function. An example use would be to test package api connectivity.
    Suggested return values are be unimplemented, success, or failure.
    """
    app_configs = opts.get("fn_illumio", {})
    illumio_helper = IllumioHelper(app_configs)
    pce = illumio_helper.get_pce_instance()

    try:
        pce.check_connection()
    except Exception as e:
        log.exception(e)

    if pce.check_connection():
        return {
            "state": "success",
            "reason": "Successful connection to Illumio PCE"
        }
    return {
        "state": "failure",
        "reason": "Failed to establish a connection to Illumio PCE"
    }
