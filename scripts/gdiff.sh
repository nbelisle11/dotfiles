#!/bin/bash
localPATH=`pwd`                          # set the path of the current directory to localPATH variable
sep='---------------'                    # create a separator variable for formatting

# Loop through each subdirectory in the current directory
for d in */; do
  echo $sep"Conducting Diff of" $d$sep    # print separator and current subdirectory
  d=`echo $d | sed s#/##`                 # remove trailing forward slash from subdirectory name
  git -C $localPATH/$d diff               # run git diff on the subdirectory
  echo -e '\n'                            # print newline for formatting
done
