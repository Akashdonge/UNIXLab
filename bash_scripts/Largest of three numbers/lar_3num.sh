#!bin/bash

max_of3(){
    max=$1
    if [ $2 -gt $max ]; then
        max=$2
    fi
    if [ $3 -gt $max ]; then
        max=$3
    fi
    echo $max
}

read -p "Enter first number: " fnum
read -p "Enter second number: " snum
read -p "Enter third number: " tnum

max=$(max_of3 $fnum $snum $tnum)
echo "The largest of $fnum, $snum and $tnum is $max. "