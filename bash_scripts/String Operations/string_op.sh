#!/bin/bash

read -p "Enter String 1: " str1
read -p "Enter String 2: " str2

if [ "$str1" = "$str2" ]; then
    echo "String are equal. "
else
    echo "Strings are not equal. "
fi

if [ -z "$str1" ]; then
    echo "String 1 is null. "
else
    echo "Length of string 1 is ${#str1}. "
fi

if [ -z "$str2" ]; then
    echo "String 2 is null. "
else
    echo "Length of string 2 is ${#str1}. "
fi