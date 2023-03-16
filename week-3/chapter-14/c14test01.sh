#!/bin/bash
# using one command line parameter with an input sent while running the script

factorial=1

for (( number = 1; number <= $1 ; number++ ))
do
    factorial=$[ $factorial * $number ]
done
echo The factorial of $1 is $factorial
