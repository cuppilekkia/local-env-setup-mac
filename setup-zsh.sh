#!/bin/bash
# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install oh my posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# Zsh config
echo "Adding configs on ZSH"
cat configs/posh-config >> ~/.zshrc

exec zsh
oh-my-posh font install Meslo

echo "Font installed."
echo "Remember to enable it in your terminal"