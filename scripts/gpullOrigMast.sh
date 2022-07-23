#!/bin/bash
localPATH=`pwd`                          # path of current directory
sep='---------------'
for d in */; do
  echo $sep"Running Git Pull on " $d$sep
  d=`echo $d | sed s#/##`                # remove trailing forward slash
  git -C $localPATH/$d pull origin master            # run git status
  echo -e '\n'
done
