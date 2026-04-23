#!/bin/bash
set -e

echo "Installing EZA aliases"
if ! grep -q "alias ls='eza'" ~/.zshrc; then
    cat configs/eza-config >> ~/.zshrc
fi
echo "EZA setup done"
