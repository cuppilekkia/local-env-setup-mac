#!/usr/bin/env bash

SUDO_USER=$(whoami)
# list fo brew packs
PACKAGES=(
    git
    golang
    ctop
    tmux
    readline
    node@14
    npm
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
)

# python packs
PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)


# Setup script for setting up a new macos machine
echo "Starting setup"

# install xcode CLI
echo "XCode Install"
xcode-select --install


# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Update homebrew recipes
brew update

echo "Installing packages..."
brew install ${PACKAGES[@]}

brew link --force node@14


echo "Installing cask..."
sudo -u $SUDO_USER brew install --cask ${CASKS[@]}

echo "Installing python packs..."
sudo -u $SUDO_USER pip3 install --upgrade pip
sudo -u $SUDO_USER pip3 install --upgrade setuptools
sudo -u $SUDO_USER pip3 install ${PYTHON_PACKAGES[@]}

# clean up
echo "Cleaning up..."
brew cleanup



echo "Configuring OS..."
# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Setup completed!"
echo "Take your time to install DOCKER manually :)"