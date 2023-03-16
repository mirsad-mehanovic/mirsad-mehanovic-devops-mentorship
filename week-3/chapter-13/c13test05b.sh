#!/bin/bash
# Example on how to read values from a file but change the IFS (internal field separator) to only new lines instead of default separators such as space, tab and/or newline.

file="states"

IFS=$'\n'

for states in $(cat states)
do
    echo "Visit beautiful $states"
done