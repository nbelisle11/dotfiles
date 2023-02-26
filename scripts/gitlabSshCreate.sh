#!/bin/bash

# Fail on any error
set -e

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

output= sshCreate github || exit $?
fullPathToSsh=$output | tail -1

eval "$(ssh-agent -s)"

ssh-add --apple-use-keychain $fullPathToSsh

echo "Verify your ~/.ssh/config is configured correctly per gitlab's guides" 
open https://docs.gitlab.com/ee/user/ssh.html#configure-ssh-to-point-to-a-different-directory
cedit ~/.ssh/config

echo "Add new public key to your account"
open https://gitlab.com/-/profile/keys