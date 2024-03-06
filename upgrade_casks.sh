#!/bin/bash

# List of casks to exclude
excluded_casks=("autodesk-fusion")

# Get the list of outdated casks
outdated_casks=$(brew outdated --casks --greedy --quiet)

echo "\nCasks"
echo $outdated_casks
echo "Excluded Casks"
echo $excluded_casks

# Loop through the outdated casks and upgrade them, excluding the ones in the excluded_casks list
for cask in $outdated_casks; do
  if [[ ! " ${excluded_casks[@]} " =~ " ${cask} " ]]; then
    brew upgrade --cask $cask
  fi
done
