#!/bin/bash

# python packs
PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)

echo "Installing python packs..."
sudo -u $SUDO_USER pip3 install --upgrade pip
sudo -u $SUDO_USER pip3 install --upgrade setuptools
sudo -u $SUDO_USER pip3 install ${PYTHON_PACKAGES[@]}

exec zsh
