# Write a shell program that accepts one or more file names as arguments and converts all of them to uppercase, provided they exist in the current directory.

uppers=""
if [ -e "$1" ]
then
  for var in $*; do
    echo $var | tr "[a-z]" "[A-Z]"
  done
else
  echo "File does not exist"
fi

# Output: 
# ❯ sh script4.sh a.txt
# A.TXT
# ❯ sh script4.sh skdjjf
# File does not exist
