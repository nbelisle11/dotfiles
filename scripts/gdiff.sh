#!/bin/bash
localPATH=`pwd`                          # path of current directory
sep='---------------'
for d in */; do
  echo $sep"Conducting Diff of" $d$sep
  d=`echo $d | sed s#/##`                # remove trailing forward slash
  git -C $localPATH/$d diff            # run git diff
  echo -e '\n'
done
