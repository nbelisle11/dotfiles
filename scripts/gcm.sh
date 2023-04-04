#!/bin/bash

# this script automates the process of checking out the main branch, 
# fetching updates, and pulling changes for each Git repository in the current directory.

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

localPATH=`pwd`                          # path of current directory
sep='---------------'
for d in */; do                          # loop through all directories in the current directory
  echo $sep"Checking out main branch"$sep
  mainBranchName=`gemb`                  # use "gemb" aliased script to get the name of the main branch
  d=`echo $d | sed s#/##`                # remove trailing forward slash from directory name
  cd $localPATH/$d                       # change directory to current directory being processed
  git checkout $mainBranchName           # switch to the main branch in the current directory
  git fetch origin                       # fetch any changes from the remote repository
  git pull origin $mainBranchName        # pull changes from the remote main branch into the local main branch
  echo -e '\n'                           # add a blank line for readability
done
