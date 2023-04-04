#!/bin/bash

# This script opens a file for editing using the 
# chezmoi configuration management tool and
# applies the changes after the file has been edited.

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

# Use the "chezmoi edit" command to open the specified file(s) for editing
# Apply any changes made to the file(s) using the "chezmoi apply" command
chezmoi edit $@ && capply
