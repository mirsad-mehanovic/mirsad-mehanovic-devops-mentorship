#!/bin/bash
# Testing a multicommand while loop - Note Only exit status of the last test command is used to determine when the loop stops

var1=10
while echo $var1
    [ $var1 -ge 0 ]
do
    echo "This is inside the loop"
    var1=$[ $var1 - 1 ]
done