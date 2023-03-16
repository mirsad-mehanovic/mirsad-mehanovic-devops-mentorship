#!/bin/bash
# finding executable files in the PATH
# check whether the individual files have the executable permission set,
# which you can do using the if-then test feature:

IFS=:
for folder in $PATH
do
    echo "$folder:"
    for file in $folder/*
    do
        if [ -x $file ]
        then
            echo " $file"
        fi
    done
done