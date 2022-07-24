#!/bin/bash
shopt -s expand_aliases
source ~/.bashrc

chezmoi edit $@ && capply