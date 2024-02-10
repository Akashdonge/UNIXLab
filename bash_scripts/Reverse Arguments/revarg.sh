#!/bin/bash

echo "Given arguments are: $* "
rev=" "

for var in $*
do
    rev=$var" "$rev
done

echo "Reversed arguments are: $rev "