#!bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: <bash_script> <filename1> <filename2>"
fi

cmp $1 $2 2>> /dev/null
if [ $? -ne 0 ]; then
    echo "The files $1 and $2 are not identical. No action taken. "
else
    echo "The files $1 and $2 are identical. $2 will be deleted. "
    rm $2
fi