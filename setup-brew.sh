#!/usr/bin/env bash
set -e

# list of brew packages
PACKAGES=(
    aws-cdk
    awscli
    eza
    git
    golang
    opentofu
    python3
    wget
)

# list of brew casks
CASKS=(
    bruno
    claude
    claude-code
    cyberduck
    imageoptim
    iterm2
    obsidian
    tailscale-app
    the-unarchiver
    visual-studio-code
)

# Setup script for setting up a new macos machine
echo "Starting setup"

# install xcode CLI
echo "XCode Install"
xcode-select --install 2>/dev/null || true

# Check for Homebrew to be present, install if it's missing
if test ! "$(which brew)"; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Fix brew permissions
sudo chown -R "$(whoami)" /opt/homebrew

# Update homebrew recipes
brew update
brew upgrade
brew tap aws/tap

echo "Installing packages..."
brew install "${PACKAGES[@]}"

echo "Installing casks..."
brew install --cask "${CASKS[@]}"

# clean up
echo "Cleaning up..."
brew cleanup

echo "Setup completed!"
echo "Take your time to install DOCKER manually :)"
