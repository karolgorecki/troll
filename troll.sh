#!/bin/bash          
# troll script
# @author Karol Górecki

COUNT=0

# init troll script
rm troll.sh
touch troll.sh

# init repo
rm README.md
echo "TROLL repo" >> README.md
git add README.md

# create commits
while IFS='' read -r line
do
