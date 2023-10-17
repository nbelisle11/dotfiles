#!/bin/bash

# This script automates the process of checking out the main branch, 
# fetching updates, and pulling changes for each Git repository in the current directory.

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

mainBranchName=`gmb`                  # use "gemb" aliased script to get the name of the main branch
git checkout $mainBranchName           # switch to the main branch in the current directory
