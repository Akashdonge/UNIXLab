#!/bin/bash

prime=" "

read -p "Enter the first bound: " fb
read -p "Enter the last bound: " lb

for num in $(seq $fb $lb)
do
    flag=0
    if [ $num -eq 1 ] || [ $num -eq 0 ]; then
        continue
    fi
    for div in $(seq 2 $((num/2)))
    do        
        if [ $((num%div)) -eq 0 ]; then
            flag=1
            break
        fi
    done
    if [ $flag -eq 0 ]; then
        prime=$prime" "$num
    fi
done

echo $prime