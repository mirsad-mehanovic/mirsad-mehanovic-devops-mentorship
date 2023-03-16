#!/bin/bash
# breaking out of an inner loop - the break command automatically terminates the innermost loop you’re in

for (( a = 1; a < 5; a++ ))
do
    echo "Outer loop: $a"
    for (( b = 1; b < 100; b++ ))
    do
        if [ $b -eq 6 ]
        then
            break
        fi
        echo " Inner loop: $b"
    done
done