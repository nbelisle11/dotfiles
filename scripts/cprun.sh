#!/bin/bash
# exit when any command fails
set -e

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

repoPath=`git rev-parse --show-toplevel`
cd $repoPath
mkdir -p .run
cp ~/src/machine-config/preferences/intellij-projects/Template\ Application.run.xml .run
