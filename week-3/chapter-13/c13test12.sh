#!/bin/bash
# using the until command - Note only the exit status of the last command determines if the bash shell
# executes the other commands defined

var1=100

until [ $var1 -eq 0 ]
do
    echo $var1
    var1=$[ $var1 - 25 ]
done