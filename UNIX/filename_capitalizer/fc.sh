#!/bin/bash
clear
ls 
if [ ! -e $1 ]; then
    echo "File does not exist in the current directory. "
else
    new_name=`echo $1 | tr "[a-z]" "[A-Z]"`
    mv $1 $new_name
fi 
ls