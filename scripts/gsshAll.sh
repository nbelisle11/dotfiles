#!/bin/bash

# Script to iterate through all directories in ~/src and 
# build the scp-like syntax used in git clone for any git repositories

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

cd ~/src/
localPATH=`pwd`                          # path of current directory
sep='---------------'
for d in */; do
  d=`echo $d | sed s#/##`                # remove trailing forward slash
  cd $localPATH/$d
  gssh
done
