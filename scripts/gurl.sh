#!/bin/bash
if [ "$#" -lt 1 ]; then
    grepvar="origin"
else
    grepvar=`echo "$@"`
fi
echo `git remote -v | grep -e "$grepvar.*\(push\)" | sed -E "s/^$grepvar[[:space:]]+//" | perl -pe 's/(?<!https):/\//' | sed 's/.*git\@/https:\/\//' | sed 's/\.git (push)//'`
# remote | operate on $grepvar / push target | remove "$grepvar  " at the beginning | strip out ":" only if not preceded by "https" | replace "git@" with "https://" | strip off trailing ".git (push)"
