#!/bin/bash
cmp $1 $2 >>/dev/null
if [ $? -eq 0 ]; then
    echo -e "Files $1 and $2 are identical. File $2 will be removed.\n"
    rm $2
else
    echo -e "Files $1 and $2 are not identical. No actions performed.\n"
    echo "Contents of file $1 are: "
    cat $1
    echo "Contents of file $2 are: "
    cat $2
fi