#!/bin/bash
set -e

# python packages
PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)

echo "Installing python packages..."
pip3 install --upgrade pip
pip3 install --upgrade setuptools
pip3 install "${PYTHON_PACKAGES[@]}"
