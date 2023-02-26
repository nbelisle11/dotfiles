#!/bin/bash

# Fail on any error
set -e

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

fullPathToSsh=`sshCreate github` | tail -1

eval "$(ssh-agent -s)"

ssh-add --apple-use-keychain $fullPathToSsh

echo "Verify your ~/.ssh/config is configured correctly per github's guides" 
open https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent
cedit ~/.ssh/config

echo "Add new public key to your account"
open https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account