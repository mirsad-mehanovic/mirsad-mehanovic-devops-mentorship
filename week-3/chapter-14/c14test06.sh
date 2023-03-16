#!/bin/bash
# Testing a Multi-function script

name=$(basename $0)

if [ $name = "copy-sum" ]
then
    total=$[ $1 + $2 ]

elif [ $name = "copy-multiplication" ]
then
    total=$[ $1 * $2 ]
fi

echo The calculated value is $total