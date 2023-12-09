# Write a shell program to do the followings on strings, Find length of a string, whether string is NULL, and two strings are equal or not.

clear
read -p "Enter String 1: " st1
read -p "Enter String 2: " st2

echo "Length of String 1: ${#st1}"
echo "Length of String 2: ${#st2}"

if [ -z "$st1" ]; then
  echo "String 1 is NULL"
else 
  echo "String 1 is not NULL"
fi 
if [ -z "$st2" ]; then
  echo "String 2 is NULL"
else
  echo "String 2 is not NULL"
fi

if [ "$st1" = "$st2" ]; then
  echo "String 1 and String 2 are equal."
else
  echo "String 1 and String 2 are not equal."
fi

# Enter String 1: Mohit
# Enter String 2: mohit
# Length of String 1: 5
# Length of String 2: 5
# String 1 is not NULL
# String 2 is not NULL
# String 1 and String 2 are not equal.
