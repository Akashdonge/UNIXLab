#!/bin/bash

f=0
s=1
counter=23
ser=" "
ser="$f $s"

while [ $counter -gt 0 ];
do
    n=$((s+f))
    ser=$ser" "$n
    f=$s
    s=$n
    counter=$((counter-1))
done

echo $ser   