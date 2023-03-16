#!/bin/bash
# breaking out of a for loop - You can use the break
# command to exit any type of loop, including while and until loops.

for var1 in 1 2 3 4 5 6 7 8 9 10
do
    if [ $var1 -eq 6 ]
    then
        break
    fi
    echo "Iteration number: $var1"
done
echo "The for loop is completed"