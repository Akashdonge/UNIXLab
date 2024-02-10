#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: <bash_script> <filename>"
    exit -1
fi

if [ ! -e "$1" ]; then
    echo "File $1 does not exist in the current directory. "
elif [ -L "$1" ]; then
    echo "File is a symbolic link. "
elif [ -d "$1" ]; then
    echo "File is a directory. "
elif [ -f "$1" ]; then
    echo "File is a regular file. "
elif [ -c "$1" ]; then
    echo "File is a character device file. "
elif [ -b "$1" ]; then
    echo "File is a block device file. "
elif [ -S "$1" ]; then
    echo "File is a socket. "
elif [ -x "$1" ]; then
    echo "File is an executable file. "
else
    echo "File type is unknown. "
fi