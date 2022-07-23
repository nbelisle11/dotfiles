#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

repo=${PWD##*/}
if [ $# != 0 ]; then
  repo=$1
fi

cd ~/src/$repo/
mainBranchName=`gemb`                    # grab main branch via gemb script
git checkout $mainBranchName
git fetch origin
git pull origin $mainBranchName
mvncc
