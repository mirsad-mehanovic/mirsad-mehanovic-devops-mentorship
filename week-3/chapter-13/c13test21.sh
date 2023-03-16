#!/bin/bash
# using the continue command
# The continue command is a way to prematurely stop processing commands inside of a
# loop but not terminate the loop completely


for (( var1 = 1; var1 < 15; var1++ ))
do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo "Iteration number: $var1"
done