#!/bin/bash
# iterate through all the files in multiple directories

for file in /mnt/c/Users/mirsad.mehanovic.GRM/Documents/MentorshipProgram/week-3/chapter-13/test6/* /mnt/c/Users/mirsad.mehanovic.GRM/Documents/MentorshipProgram/week-3/chapter-13/test7/test
do
if [ -d "$file" ]
then 
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
else
echo "$file doesn't exist"
fi
done