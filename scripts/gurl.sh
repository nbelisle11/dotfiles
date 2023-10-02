#!/bin/bash

# this bash script gets the URL for the remote repository specified in the argument 
# (or "origin" if no argument is provided), and converts any SSH URLs to HTTPS URLs. 

# Check if any arguments were passed in
if [ "$#" -lt 1 ]; then
    # If not, set the grep variable to "origin"
    grepvar="origin"
else
    # If there is an argument, set the grep variable to the argument value
    grepvar=`echo "$@"`
fi

echo `git remote -v | grep -e "$grepvar.*\(push\)" | sed -E "s/^$grepvar[[:space:]]+//" | perl -pe 's/(?<!https):/\//' | sed 's/.*git\@/https:\/\//' | sed 's/\.git//' | sed 's/ (push)//'`
# remote | operate on $grepvar / push target | remove "$grepvar  " at the beginning | strip out ":" only if not preceded by "https" | replace "git@" with "https://" | strip off trailing ".git" | strip off trailing " (push)"
