#!/bin/bash
# redirecting the for output to a file
# Instead of displaying the results on the monitor, the shell redirects the results of the for
# command to the file output.txt

for (( a = 1; a < 10; a++ ))
do
    echo "The number is $a"
done > test23.txt
echo "The command is finished."