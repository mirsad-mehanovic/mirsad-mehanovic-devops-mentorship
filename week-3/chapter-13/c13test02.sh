#!/bin/bash
# Another example of how not to use for command with excape character and double quotation to define values that use single quotation mark
# This example shows that these help but it's not pretty and its difficult to read

for test in I don\'t know if "this'll" work
do
    echo "word:$test"
done