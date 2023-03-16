#!/bin/bash
# redirecting all output to a file

exec 1>testout

echo "Redirect test"
echo "from one file to another"
echo "without redirecting individual lines"