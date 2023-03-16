#!/bin/bash
# Using a variable to hold the list

list="Paris London Moscow Leeds Belgrade Sarajevo"
list=$list" Berlin"

for city in $list
do
    echo "Have you ever visitted $city?"
done