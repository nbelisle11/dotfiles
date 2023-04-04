#!/bin/bash

# This script simplifies the process of creating a new SSH key
# for use with GitHub and adding it to the system's SSH agent.

# Fail on any error
set -e

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

# Create a new SSH key for GitHub and get the full path to the private key file
output= sshCreate github || exit $?
fullPathToSsh=$output | tail -1

# Start the SSH agent and add the new SSH key to it
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain $fullPathToSsh

# Instruct the user to verify their SSH configuration and open the SSH config file for editing
echo "Verify your ~/.ssh/config is configured correctly per GitHub's guides" 
open https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent
cedit ~/.ssh/config

# Instruct the user to add the new public key to their GitHub account
echo "Add new public key to your account"
open https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
