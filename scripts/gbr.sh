#!/bin/bash

# This script takes a parameter for a new branch name / commit message and creates 
# a new kebab cased branch name with the current user name, current date, and input parameter. 
# It then stashes all local changes, pulls changes from the master branch, creates a new branch with the generated name, 
# applies all the stashed changes, and push commits the changes with the original parameter string as the commit message.

# Check if there is at least one parameter given, otherwise exit the script
if [ "$#" -lt 1 ]; then
    echo "Illegal number of parameters, must be greater than 1"
    exit -1
fi

# Get the current date in the format YYYYMMDD
datestr=$(date +%Y%m%d)

# Strip square brackets from the branch name parameter using sed
branchnameStripedBrackets=`echo "$@" | sed 's/[][]//g'`

# Combine the current user name, current date, and stripped branch name to create a new branch name
# Replace any spaces, angle brackets, and double quotes with hyphens using sed
branchname=`echo $USER-$datestr-$branchnameStripedBrackets | sed 's/[ <>\"]/-/g'`

# Set the commit message to the original parameter string
commitmsg=`echo "$@"`

# Stash any untracked changes
git stash --include-untracked

# Pull changes from the master branch
git pull origin master

# Create a new branch with the generated branch name
git checkout -b $branchname

# Pop the stashed changes back into the working directory
git stash pop

# Add all files to the staging area
git add .

# Commit changes with the original parameter string as the commit message
git commit -m "$commitmsg"

# Push changes to the remote repository on the new branch
git push origin $branchname
