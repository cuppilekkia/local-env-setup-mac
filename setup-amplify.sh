#!/bin/bash

echo "Installing Amplify CLI"
curl -sL https://aws-amplify.github.io/amplify-cli/install | bash && $SHELL

exec zsh
