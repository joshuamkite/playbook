#!/bin/bash
# This script helps to prepare the repo for use with leanpub
#destroy /manuscript dir
rm -rf manuscript
#recreate /manuscript
mkdir manuscript
#Recursively copy .md files from the current dir and children to /manuscript.
find -iname "*.md" -exec cp {} ./manuscript \;
#change to manuscript dir
cd manuscript/
#create disclaimer to be listed first (dirty hacks R us) Leanpub appears to ignore .md files names beginning with 0
echo "All credit for content is due to dxw as described at https://github.com/dxw/playbook \n\n This edition was prepared for publication on $(date)" > a_copyright_disclaimer.md
#prepend 'a_' to readme so that it comes second in file listing
mv README.md a_README.md
#List chapters and output to list
ls *.md > Book.txt
#return to repo root dir to avoid confusion
cd ../

