#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

localPATH=`pwd`                          # path of current directory
sep='---------------'
for d in */; do
  echo $sep"Checking out main branch"$sep
  mainBranchName=`gemb`                    # grab main branch via gemb script
  d=`echo $d | sed s#/##`                # remove trailing fwd slash
  cd $localPATH/$d
  git checkout $mainBranchName
  git fetch origin
  git pull origin $mainBranchName
  echo -e '\n'
done
