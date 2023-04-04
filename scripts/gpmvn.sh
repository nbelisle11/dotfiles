#!/bin/bash

# This script automates the process of pulling the latest changes from a 
# Git repository and compiling and installing the project using Maven

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

# Set the repository name to the current directory name
repo=${PWD##*/}

# Check if the script is called with an argument. If so, set it as the repo name
repo=${PWD##*/}
if [ $# != 0 ]; then
  repo=$1
fi

# Change the working directory to the local repository
cd ~/src/$repo/

# Get the current branch name using the 'gemb' alias
currBranch=`gemb`

# Pull the latest changes from the current branch in the remote repository
git pull origin $currBranch

# Run the 'mvncc' alias to compile and install the project using Maven
mvncc
