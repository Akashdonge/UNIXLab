#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: <bash_scripts> <filename1> <filename2> "
    exit -1
fi

p1=$(stat -c "%A" "$1" 2>>/dev/null)
p2=$(stat -c "%A" "$2" 2>>/dev/null)

if [ "$p1" = "$p2" ]; then
    echo "Permissions are identical. "
else
    echo -e "Permissions are not identical.\nPermissions of $1: $p1\nPermissions of $2: $p2"
fi