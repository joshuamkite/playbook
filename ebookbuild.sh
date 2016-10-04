#!/bin/bash
# This script helps to prepare the repo for use with leanpub
#Recursively copy .md files from the current dir and children to /manuscript. Old versions are overwitten. Orphaned md files in /manuscript are retained
find -iname "*.md" -exec cp {} ./manuscript \;
#change to manuscript dir
cd manuscript/
#create disclaimer to be listed first (dirty hacks R us)
echo "All credit for content is due to dxw as described at https://github.com/dxw/playbook \n\n This edition was prepared for publication on $(date)" > 00_disclaimer.md
#prepend '01' to readme so that it comes second in file listing
mv README.md 01_README.md
#List chapters and output to list
ls *.md > Book.txt
#return to repo root dir to avoid confusion
cd ../

