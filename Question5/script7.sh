# Write a shell script that accepts two file names as arguments, checks if the permissions for these files are identical and if the permissions are identical, output common permission and otherwise output each file name followed by its permissions.
clear
 
a=$(ls -l ${1} | cut -c2-10 | tr -d "\n")
b=$(ls -l ${2} | cut -c2-10 | tr -d "\n")
if [ "$a" = "$b" ]; then
  echo "The file permissions are identical"
  echo $a
else
  echo "The file permissions are not identical"
  echo "$1 $a"|column -t
  echo "$2 $b"|column -t
fi

# Output:
# > sh script6.sh a.txt b.txt
# The file permissions are not identical
# a.txt  rwxr-xr-x
# b.txt  rw-r--r--
