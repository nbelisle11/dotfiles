#!/bin/bash
if [ "$#" -lt 1 ]; then
    echo "Illegal number of parameters, must be greater than 1"
    exit -1
fi

datestr=$(date +%Y%m%d)
branchnameStripedBrackets=`echo "$@" | sed 's/[][]//g'`
branchname=`echo $USER-$datestr-$branchnameStripedBrackets | sed 's/[ <>\"]/-/g'`
commitmsg=`echo "$@"`
git stash --include-untracked
git pull origin master
git checkout -b $branchname
git stash pop
git add .
git commit -m "$commitmsg"
git push origin $branchname
