#!/bin/bash
# Extract command line options & values with getopt
#The getopt command is a great tool to have handy when processing command line options
#and parameters. It reorganizes the command line parameters to make parsing them in your
#script easier.

set -- $(getopt -q ab:cd "$@")


while [ -n "$1" ]
do
    case "$1" in
        -a) echo "Found the -a option" ;;
        -b) param="$2"
        echo "Found the -b option, with parameter value $param"
        shift ;;
        -c) echo "Found the -c option" ;;
        --) shift
        break ;;
        *) echo "$1 is not an option";;
    esac
    shift
done

count=1
for param in "$@"
do
    echo "Parameter #$count: $param"
    count=$[ $count + 1 ]
done
