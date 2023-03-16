#!/bin/bash
# Testing parameters - test the number of parameters present before trying to use them

if [ $# -ne 2 ]
then
    echo Usage: test9.sh value a, value b
else
    total=$[ $1 + $2 ]
    echo The total is $total
fi