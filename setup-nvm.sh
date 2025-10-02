#!/bin/bash

echo "Installing NVM"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
cat configs/nvm-config >> ~/.zshrc
exec zsh

nvm install node
