#!/bin/bash

# This iterates over each subdirectory of ~/src/, and performs 
# a git pull origin on the current branch of each subdirectory's Git repository.

# Let me call aliases
shopt -s expand_aliases
source ~/.bashrc

# Change directory to ~/src/
cd ~/src/
localPATH=`pwd`           

# Set a variable separator for readability
sep='---------------'     

for d in */; do       
  # Get the current branch of the Git repository in the subdirectory    
  currBranch=`gecb $localPATH/$d`   

  # Print separator and message
  echo $sep"Running Git Pull Origin "$currBranch" on " $d$sep   

  # Remove trailing forward slash from directory name
  d=`echo $d | sed s#/##`   

  # Perform a git pull origin on the current branch of the repository
  git -C $localPATH/$d pull origin $currBranch   

  # Print a newline for spacing
  echo -e '\n'    
done

# Print the total elapsed time the script ran in seconds.
echo "Elapsed: $SECONDS seconds"   

