#!/bin/bash
# breaking out of an outer loop
# The break command includes a single command line parameter value:
# break n

for (( a = 1; a < 4; a++ ))
do
    echo "Outer loop: $a"
    for (( b = 1; b < 100; b++ ))
    do
        if [ $b -gt 4 ]
        then
        break 2
        fi
        echo " Inner loop: $b"
    done
done