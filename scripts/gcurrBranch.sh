#!/bin/bash

# The script uses the git symbolic-ref command to get the full name of the current branch 
# of a git repository and then uses sed to remove the "refs/heads/" prefix and 
# output only the branch name.

if [ $# == 0 ]; then
  echo `git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||'`
else
  echo `git -C $1 symbolic-ref -q HEAD | sed -e 's|^refs/heads/||'`
fi
