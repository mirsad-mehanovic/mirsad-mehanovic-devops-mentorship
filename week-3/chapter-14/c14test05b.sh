#!/bin/bash
# Using basename with the $0 parameter to determine the script name the shell started from the command line but without the path to the script

name=$(basename $0)
echo
echo The script name is: $name