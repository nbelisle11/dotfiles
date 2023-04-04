#!/bin/bash

# This line enables the use of aliases in the script
shopt -s expand_aliases
source ~/.bashrc

repo=""

# If an argument is passed, it sets the `repo` variable to "-C [argument]"
if [ $# != 0 ]; then
  repo="-C $1"
fi

# Checks if the current Git repository has a HEAD reference
git $repo rev-parse --abbrev-ref HEAD &> /dev/null
RESULT=$?
if [ $RESULT != 0 ]; then
  # If there is no HEAD reference, fetch main branch name from origin using gmb
  echo `gmb`
  exit
fi

# This line outputs the name of the current Git branch, removing the "origin/" prefix if present
echo `git $repo rev-parse --abbrev-ref HEAD 2> /dev/null | cut -d '/' -f 2`
