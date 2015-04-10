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
    # inc COUNT
    COUNT=`expr $COUNT + 1`
    name=$line

    # get back to the future
    DATE_NOW=$(date +%s)
    SECONDS_A_DAY=86400
    DATE_NOW=`expr $DATE_NOW - $SECONDS_A_DAY`
    DATE_OK=`date --date="@$DATE_NOW" +"%F %T"`

    # set the date
    date --set="$DATE_OK"
