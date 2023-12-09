# Write a shell program that creates a student database file which consists of StudentID, Student Name, Semester, Department. Display only Student Name, Department, and frequency of occurrences off students belonging to respective departments.

clear
read -p "Enter the number of students whose data is to be entered: " n
n=$((n))
touch studentdb.txt
echo -n > studentdb.txt
counter=$((0))
del=","
while [ $counter -lt $n ]; do
  echo -e "\n"
  read -p "Enter the first name of the student: " fname
  read -p "Enter the last name of the student: " lname
  read -p "Enter the USN of the student: " usn
  read -p "Enter the semester of the student: " sem
  read -p "Enter the department of the student: " dept
  
  record="${fname}${del}${lname}${del}${usn}${del}${sem}${del}${dept}"
  echo "${record}" >> studentdb.txt
  counter=$((counter+1))
done
echo -e "\n"
cut -d"," -f1,2,5 studentdb.txt|tr "," " "|column -t
echo -e "\n"
cut -d"," -f5 studentdb.txt|sort|uniq -c

# Enter the number of students whose data is to be entered: 5


# Enter the first name of the student: John
# Enter the last name of the student: Wick
# Enter the USN of the student: 1KI22LL007
# Enter the semester of the student: 3
# Enter the department of the student: CSE


# Enter the first name of the student: Mohit
# Enter the last name of the student: Nair
# Enter the USN of the student: 1MS22IS079
# Enter the semester of the student: 3
# Enter the department of the student: ISE


# Enter the first name of the student: Walter
# Enter the last name of the student: White
# Enter the USN of the student: 1ME22TH420
# Enter the semester of the student: 3
# Enter the department of the student: ISE



# John     Wick     CSE
# Mohit    Nair     ISE
# Walter   White    ISE


#      1 CSE
#      2 ISE
