#!/bin/bash
# using the until command - This example tests the var1 variable to determine when the until loop should stop
# As soon as the value of the variable is equal to zero, the until command stops the loop.

var1=100

until echo $var1
    [ $var1 -eq 0 ]
do
    echo Inside the loop: $var1
    var1=$[ $var1 - 25 ]
done
