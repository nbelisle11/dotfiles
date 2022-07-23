#!/bin/bash
localPATH=`pwd`                          # path of current directory
sep='---------------'
branch='master'
for d in */; do
  echo $sep"Checking out "$branch$sep
  d=`echo $d | sed s#/##`                # remove trailing forward slash
  git -C $localPATH/$d checkout $branch            # run git status
  echo -e '\n'
done
