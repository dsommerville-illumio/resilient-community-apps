#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages
import os
import glob
import ntpath

SRC_DIR = os.path.abspath(os.path.dirname(__file__))
LIBS_DIR = os.path.join(SRC_DIR, 'lib')


def get_module_name(module_path):
    """
    Return the module name of the module path
    """
    return ntpath.split(module_path)[1].split(".")[0]


def snake_to_camel(word):
    """
    Convert a word from snake_case to CamelCase
    """
    return ''.join(x.capitalize() or '_' for x in word.split('_'))


def read_license(license_file):
    with open(license_file, 'r') as f:
        return f.read()

setup(
    name="fn_illumio",
    version="1.0.1",
    license="{}".format(read_license(os.path.join(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'fn_illumio'), 'LICENSE'))),
    author="Illumio",
    author_email="app-integrations@illumio.com",
    url="illumio.com",
    description="Illumio Core Integration for IBM SOAR",
    long_description="""The Illumio Core security platform provides a micro-segmentation solution that enhances network security and prevents propagation of attacks. The Illumio integration with the IBM SOAR platform allows you to automate actions in Illumio Core through the use of SOAR functions and workflows.""",
    install_requires=[
        "resilient-circuits>=42.0.0",
        "illumio>=0.7.2"
    ],
    python_requires='>=3.6',
    packages=find_packages(),
    include_package_data=True,
    platforms="any",
    classifiers=[
        "Programming Language :: Python",
    ],
    entry_points={
        "resilient.circuits.components": [
            # When setup.py is executed, loop through the .py files in the components directory and create the entry points.
            "{}FunctionComponent = fn_illumio.components.{}:FunctionComponent".format(snake_to_camel(get_module_name(filename)), get_module_name(filename)) for filename in glob.glob("./fn_illumio/components/[a-zA-Z]*.py")
        ],
        "resilient.circuits.configsection": ["gen_config = fn_illumio.util.config:config_section_data"],
        "resilient.circuits.customize": ["customize = fn_illumio.util.customize:customization_data"],
        "resilient.circuits.selftest": ["selftest = fn_illumio.util.selftest:selftest_function"]
    }
)
