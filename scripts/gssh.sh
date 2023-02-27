#!/bin/bash
# Script to build the scp-like syntax used in git clone when run at the root of an already checked out repository

## Unless otherwise specified, use origin
if [ "$#" -lt 1 ]; then
    grepvar="origin"
else
    grepvar=`echo "$@"`
fi

# remote | operate on $grepvar / push target | remove "$grepvar  " at the beginning | strip off trailing " (push)"
echo `git remote -v | grep -e "$grepvar.*\(push\)" | sed -E "s/^$grepvar[[:space:]]+//" | sed 's/[[:space:]]*(push)//'`
