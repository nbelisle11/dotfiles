#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

urlroot=`gurl`
urlpath="/pull/new/"
gitlab="gitlab"
branchname=`git rev-parse --abbrev-ref HEAD`
if [[ $urlroot =~ $gitlab ]]; then
	urlpath="/-/merge_requests/new?merge_request%5Bsource_branch%5D="
fi
open $urlroot$urlpath$branchname
