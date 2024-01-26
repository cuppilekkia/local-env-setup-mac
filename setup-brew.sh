#!/usr/bin/env bash

SUDO_USER=$(whoami)

# list fo brew packs
PACKAGES=(
    git
    golang
    ctop
    tmux
    readline
    aws-cdk
    aws-sam-cli	
    awscli
    mysql
    sqlite
    python
    python3
    xz
    yarn
    wget
    hashicorp/tap/terraform
    jandedobbeleer/oh-my-posh/oh-my-posh
    eza
)

# list of brew casks packs
CASKS=(
    iterm2
    adobe-acrobat-reader
    skype
    slack
    spotify
    visual-studio-code
    steam
    postman
    google-chrome
    firefox
    notion
    alfred
    imageoptim
    the-unarchiver
    transmission
    zoom
    fig
)

# Setup script for setting up a new macos machine
echo "Starting setup"

# install xcode CLI
echo "XCode Install"
xcode-select --install

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$SUDO_USER/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Fix brew permissions
sudo chown -R $SUDO_USER /opt/homebrew

# Update homebrew recipes
brew update
brew tap aws/tap
brew tap hashicorp/tap

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Installing cask..."
sudo -u $SUDO_USER brew install --cask ${CASKS[@]}

# clean up
echo "Cleaning up..."
brew cleanup

echo "Setup completed!"
echo "Take your time to install DOCKER manually :)"
