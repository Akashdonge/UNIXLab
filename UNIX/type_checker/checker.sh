#!/bin/bash
if [ -f $1 ]; then
    echo "$1 is a file"
elif [ -d $1 ]; then
    echo "$1 is a directory"
elif [ -L $1 ]; then
    echo "$1 is a Symbolic Link"
elif [ -c $1 ]; then
    echo "$1 is a character device file" 
elif [ -b $1 ]; then
    echo "$1 is a block device file"
elif [ -e $1 ]; then
    echo "$1 is of unrecognized type"
else
    echo "$1 does not exist" 
fi