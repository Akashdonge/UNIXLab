#!/bin/bash

read -p "Enter the number: " num
rev=0
temp=$num

while [ $num -gt 0 ]; do
    d=$((num%10))
    rev=$((rev*10+d))
    num=$((num/10))
done
echo "Original number: $temp"
echo "Reversed number: $rev"