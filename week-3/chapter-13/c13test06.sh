#!/bin/bash
# iterate through all the files in a directory

for file in /mnt/c/Users/mirsad.mehanovic.GRM/Documents/MentorshipProgram/week-3/chapter-13/test6/*
do
if [ -d "$file" ]
then 
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
fi
done
