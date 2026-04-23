#!/bin/bash
set -e

echo "Installing NVM"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
if ! grep -q "NVM_DIR" ~/.zshrc; then
    cat configs/nvm-config >> ~/.zshrc
fi

# Load nvm into current shell so we can install node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install node
