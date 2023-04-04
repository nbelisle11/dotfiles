#!/bin/bash

# This script automates the process of updating and building a specific Maven project by 
# checking out the main branch, fetching updates, and pulling changes from the remote repository, 
# and then running the "mvncc" script to clean and compile the project. 

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

# Get the name of the current directory, or use the first argument as the repository name
repo=${PWD##*/}
if [ $# != 0 ]; then
  repo=$1
fi

# Change directory to the repository's directory
cd ~/src/$repo/

# Use a script called "gemb" to get the name of the main branch
mainBranchName=`gemb`

# Switch to the main branch in the current directory
git checkout $mainBranchName

# Fetch any changes from the remote repository
git fetch origin

# Pull changes from the remote main branch into the local main branch
git pull origin $mainBranchName

# Run the "mvncc" script to clean and compile the Maven project
mvncc
