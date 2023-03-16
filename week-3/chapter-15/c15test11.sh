#!/bin/bash
# redirecting output to different locations

exec 2>testerror

echo "Script begining"
echo ", redirecting from this point"

exec 1>testout

echo "This output sits in the testout file"
echo "however, this goes to the testerror file" >&2