#!/bin/bash
# process new user accounts
# The goal of shell scripts is to make life easier for the system administrator. If you happen to
# work in an environment with lots of users, one of the most boring tasks can be creating new user accounts.
# set the IFS separator character to a comma as the test part of the while statement. Then to read
# the individual lines, I’ll use the read command.

input="Users.csv"
while IFS=',' read -r userid name
do
    echo "adding $userid"
    useradd -c "$name" -m $userid
done < "$input"

# Please note that in the output of the script user used to run this script does not have permissions
# I've done so to avoid the hustle of removing the users later on
# Make sure that user which runs this script has the permission to create the local user on the machine