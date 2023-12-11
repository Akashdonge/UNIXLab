# Write a shell program that takes a command line argument and reports on whether it is directory, a file, or something else.


if [ -f "$1" ]
then
  echo "Regular file"
elif [ -d "$1" ]
then 
  echo "Directory" 
elif [ -p "$1" ]
then 
  echo "FIFO (named pipe)"
elif [ -S "$1" ]
then 
  echo "Socket"
elif [ -b "$1" ]
then 
  echo "Block file"
elif [ -L "$1" ]
then
  echo "Symbolic link"
elif [ !-e "$1" ]
then
  echo "File does not exist"
else
  echo "File type is unknown"
fi

# Output: 
# ❯ sh script3.sh a.txt
# Regular file
