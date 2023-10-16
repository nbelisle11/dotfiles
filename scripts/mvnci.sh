#!/bin/bash

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

# Check if there is at least one parameter given, otherwise exit the script
if [ "$#" -lt 1 ]; then
    echo "Illegal number of parameters, must be greater than 1"
    exit -1
fi

mvn clean install -DskipTests -Dverification.skip -pl $@ -am -amd
