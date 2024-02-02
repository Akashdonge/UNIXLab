#!/bin/bash
clear
read -p "Enter the number of students whose data is to be entered: " n
i=0
fields="USN,First_Name,Last_Name,Department"
echo $fields > student_database.csv
sep=","
while [ $i -lt $n ]; do
    read -p "Enter the USN of the student: " usn
    read -p "Enter the First Name of the student: " fname
    read -p "Enter the Last Name of the student: " lname
    read -p "Enter the Department of the student (e.g. 'ISE', 'CSE' etc): " dept
    data="$usn$sep$fname$sep$lname$sep$dept"
    echo $data >> student_database.csv
    ((i++))
done

# Printing the Name and Department of students:
cut -d "," -f 2,3,4 student_database.csv | tr ',' ' ' | column -t
 
# Printing Department and Department Strength: 
echo -e "n  Department"
cut -d "," -f 4 <(sed '1d' student_database.csv) | tr ',' ' ' | sort | uniq -c | column -t