#!/bin/bash
read -p "Enter the first string: " str1
read -p "Enter the second string: " str2

if [ -z "$str1" ]; then
    echo "String 1 is null"
else
    echo "String 1 is not null"
    echo -e "Length of the first string is ${#str1}"
fi

if [ -z "$str2" ]; then
    echo "String 2 is null"
else
    echo "String 2 is not null"
    echo -e "Length of the first string is ${#str1}"
fi

if [ "$str1" = "$str2" ]; then
    echo "The two strings are equal. "
else
    echo "The two strings are not equal. "
fi