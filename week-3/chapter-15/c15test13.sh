#!/bin/bash
# using an alternative file descriptor

exec 3>test13out

echo "Display on monitor"
echo "Store in a file" >&3