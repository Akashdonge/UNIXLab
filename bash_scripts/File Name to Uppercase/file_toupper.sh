#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: <bash_script> <file1> <file2> <file3>... "
fi

for var in $*
do
    if [ ! -e $var ]; then
        echo "File does not exist in current directory. "
        exit -1
    fi
    new=$(echo $var | tr "[a-z]" "[A-Z]")
    mv $var $new
done