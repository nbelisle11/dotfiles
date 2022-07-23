#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

gitdir=`git rev-parse --show-prefix`
urlroot=`gurl`
urlpath="/tree/master/"
if [ -z "$gitdir" ]; then
  open $urlroot
else
  open $urlroot$urlpath$gitdir
fi
