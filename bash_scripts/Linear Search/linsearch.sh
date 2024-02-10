#!/bin/bash

arr=()

read -p "Enter the number of elements to be added to the array: " num
counter=0

while [ $counter -lt $num ];
do
    read -p "Enter element $((counter+1)): " tmp
    arr+=($tmp)
    counter=$((counter+1))
done

read -p "Enter the element to be searched " ele

flag=0
count=0
for var in "${arr[@]}"
do
    if [ $var -eq $ele ]; then
        flag=1
        break
    else
        count=$((count+1))
    fi
done

if [ $flag -eq 1 ]; then
    echo "Element $ele is at index $count of the array. "
else
    echo "Element not found. "
fi   