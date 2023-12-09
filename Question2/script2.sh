# Write a shell program which takes two file names as arguments, if their contents are the same then remove the second file.

if cmp -s "$1" "$2"
then
  echo "Files are identical. $2 will be removed. "
  rm $2
else
  echo "Files are not identical. No action performed. "
fi

# Output:
# ❯ ls
# a.txt  b.txt   script2.sh
# ❯ sh script2.sh a.txt b.txt
# Files are identical. b.txt will be removed.
# ❯ ls
# a.txt  script2.sh
