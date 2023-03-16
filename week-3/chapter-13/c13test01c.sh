#!/bin/bash
# Example of how not to use for command with single quotation mark within the list values

for test in I don't know if this'll work
do
    echo "word:$test"
done
