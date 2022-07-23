#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

cd ~/src/
localPATH=`pwd`                          # path of current directory
sep='---------------'
for d in */; do
  currBranch=`gecb $localPATH/$d`
  echo $sep"Running Git Pull Origin "$currBranch" on " $d$sep
  d=`echo $d | sed s#/##`                # remove trailing forward slash
  git -C $localPATH/$d pull origin $currBranch
  echo -e '\n'
done

echo "Elapsed: $SECONDS seconds"
