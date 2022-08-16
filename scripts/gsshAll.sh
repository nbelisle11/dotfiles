#!/bin/bash
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
