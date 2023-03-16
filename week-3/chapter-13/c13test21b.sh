#!/bin/bash
# improperly using the continue command in a while loop
# shell executes the continue command,
# it skips the remaining commands. If you’re incrementing your test condition variable in
# one of those conditions, bad things happen :)

var1=0

while echo "while iteration: $var1"
[ $var1 -lt 12 ]
do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo " Inside iteration number: $var1"
    var1=$[ $var1 + 2 ]
done