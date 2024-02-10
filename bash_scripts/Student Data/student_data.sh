#!/bin/bash

clear
read -p "Enter the number of students whose data is to be entered: " n
fields="usn,first_name,last_name,dept"
echo $fields > studentdatabase.csv
del=","
while [ $n -gt 0 ]; do
    read -p "Enter the USN of the student: " usn
    read -p "Enter the first name of the student: " fname
    read -p "Enter the last name of the student: " lname
    read -p "Enter the Department of the student: " dept
    dbline="$usn$del$fname$del$lname$del$dept"
    echo $dbline >> studentdatabase.csv
    n=$((n-1))
done

cut -d"," -f 2,3,4 studentdatabase.csv | tr "," " " | column -t

echo "n dept_name"
cut -d"," -f 4 <(sed '1d' studentdatabase.csv)  | tr "," " " | sort | uniq -c | column -t 