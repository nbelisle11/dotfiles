#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

urlroot=`gurl`                   # get the URL of the remote repository
urlpath="/pull/new/"             # path component for the repository pull request page
gitlab="gitlab"                  # a string to check if the repository is hosted on GitLab
branchname=`git rev-parse --abbrev-ref HEAD`  # get the name of the current branch

if [[ $urlroot =~ $gitlab ]]; then   # if the repository is hosted on GitLab
  urlpath="/-/merge_requests/new?merge_request%5Bsource_branch%5D="  # update the URL path to create a new merge request
fi # if not assume github

# open the URL for the new pull request/merge request page for the current branch in a browser
open $urlroot$urlpath$branchname
