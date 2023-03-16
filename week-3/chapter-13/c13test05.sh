#!/bin/bash
# Example on how to read values from a file

file="states"

for states in $(cat states)
do
    echo "Visit beautiful $states"
done