#!/bin/bash

# This script simplifies the process of creating a new SSH key
# for use with GitLab and adding it to the system's SSH agent.

# Fail on any error
set -e

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

# Create a new SSH key for GitLab and get the full path to the private key file
output= sshCreate gitlab || exit $?
fullPathToSsh=$output | tail -1

# Start the SSH agent and add the new SSH key to it
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain $fullPathToSsh

# Instruct the user to verify their SSH configuration and open the SSH config file for editing
echo "Verify your ~/.ssh/config is configured correctly per gitlab's guides" 
open https://docs.gitlab.com/ee/user/ssh.html#configure-ssh-to-point-to-a-different-directory
cedit ~/.ssh/config

# Instruct the user to add the new public key to their GitLab account
echo "Add new public key to your account"
open https://gitlab.com/-/profile/keys
