#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

repo=""
if [ $# != 0 ]; then
  repo="-C $1"
fi

#ensure repo has an origin/HEAD, if not assume "master"
git $repo rev-parse --abbrev-ref HEAD &> /dev/null
RESULT=$?
if [ $RESULT != 0 ]; then
  echo `gmb`
  exit
fi

echo `git $repo rev-parse --abbrev-ref HEAD 2> /dev/null | cut -d '/' -f 2`
