#!/bin/bash
if [ -e $1 ] && [ -e $2 ]; then
    p1=`cut -c 2-10 <(ls -l $1)`
    p2=`cut -c 2-10 <(ls -l $2)`
    if [ "$p1" = "$p2" ]; then
        echo "File permissions of $1 and $2 are identical. "
        echo "The permissions are as follows: $1 "
    else
        echo -e "File permissions are not identical. The permissions of each file are\n$1: $p1\n$2: $p2"
    fi 
else
    echo "One or both of the files do not exist in the current directory "
fi