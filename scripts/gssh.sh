#!/bin/bash
if [ "$#" -lt 1 ]; then
    grepvar="origin"
else
    grepvar=`echo "$@"`
fi
git remote -v | grep -e "$grepvar.*\(push\)" | sed -E "s/^$grepvar[[:space:]]+//" | sed 's/[[:space:]]+(push)//'
# remote | operate on $grepvar / push target | remove "$grepvar  " at the beginning | strip off trailing " (push)"
