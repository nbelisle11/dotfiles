#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

repo=${PWD##*/}
if [ $# != 0 ]; then
  repo=$1
fi

cd ~/src/$repo/
currBranch=`gemb`
git pull origin $currBranch
mvncc
