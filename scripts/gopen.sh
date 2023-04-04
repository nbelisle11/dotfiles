#!/bin/bash

# This script opens the remote repository's page in the browser at the current 
# directory path, if executed in the context of a Git repository.

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc


gitdir=`git rev-parse --show-prefix`   # get the path to the current directory in the Git repository
urlroot=`gurl`                         # get the URL of the remote repository
urlpath="/tree/master/"                # path component for the repository main branch

if [ -z "$gitdir" ]; then              # if the Git repository directory root path is empty
  open $urlroot                        # open the URL for the root of the repository in a browser
else
  open $urlroot$urlpath$gitdir         # open the URL for the current path in a browser
fi
