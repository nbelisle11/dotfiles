#!/bin/bash
shopt -s expand_aliases
source ~/.bashrc

cd ~/src/
localPATH=`pwd`                          # path of current directory
sep='---------------'
for d in */; do
  d=`echo $d | sed s#/##`                # remove trailing forward slash
  cd $localPATH/$d
  gitstatus=$(git status)
  mainBranchName=`gemb`
  onMainBranch="On branch $mainBranchName"
  cleanTree="nothing to commit, working tree clean"
  upToDate="Your branch is up to date with"
  if ! [[ $gitstatus =~ $onMainBranch && $gitstatus =~ $upToDate && $gitstatus =~ $cleanTree ]]; then
    echo $sep"Status of" $d$sep
    git status | red-grep -E -e 'On branch \w+|$' | green-grep -E -e 'On branch master|$' | red-grep -E -e 'modified\:.*$|$'           # run git status
    echo -e '\n'
  fi
done

echo "Elapsed: $SECONDS seconds"
