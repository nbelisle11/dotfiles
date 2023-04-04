#!/bin/bash

# This script checks the git status of all subdirectories in the ~/src/ directory that contain a Git repository. 
# If a subdirectory is not on the main branch, or the working tree is dirty, or the local branch is not up to 
# date with the remote branch, it prints the output of git status in color, using colored grep aliases. 

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

# Change directory to ~/src/
cd ~/src/
localPATH=`pwd`           

# Set a variable separator for readability
sep='---------------'     

for d in */; do
  # remove the trailing forward slash from the directory name
  d=`echo $d | sed s#/##`

  # change the current working directory to the subdirectory 
  cd $localPATH/$d

  # run git status command and store the output in a variable
  gitstatus=$(git status)
  # store the name of the main branch in a variable using a custom alias
  mainBranchName=`gemb`

  # Match strings for if current branch is the main branch, if the working tree is clean, 
  # and if the local branch is up to date with the remote branch
  onMainBranch="On branch $mainBranchName"     
  cleanTree="nothing to commit, working tree clean"
  upToDate="Your branch is up to date with"

  # check if the current branch is not the main branch, or the working tree is dirty, or the local branch is not up to date with the remote branch
  if ! [[ $gitstatus =~ $onMainBranch && $gitstatus =~ $upToDate && $gitstatus =~ $cleanTree ]]; then
    echo $sep"Status of" $d$sep       # print a separator and the name of the subdirectory

    # run git status command and colorize the output using colored grep aliases
    git status | red-grep -E -e 'On branch \w+|$' | green-grep -E -e 'On branch master|$' | red-grep -E -e 'modified\:.*$|$'

    # print a newline for spacing
    echo -e '\n'           
  fi
done

# Print the total elapsed time the script ran in seconds.
echo "Elapsed: $SECONDS seconds"   
