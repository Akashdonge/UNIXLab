# Write a shell program that accepts one or more file names as arguments and converts all of them to uppercase, provided they exist in the current directory.

for file in $*; do
    if [ -e "$file" ]; then
        new_name=$(echo "$file" | tr '[a-z]' '[A-Z]')
        mv "$file" "$new_name"
    else
        echo "File '$file' does not exist in the current directory."
    fi
done

# Output: 
# ❯ ls
# a.txt  b.txt  script4.sh
# ❯ sh script4.sh a.txt b.txt
# ❯ ls
# A.TXT  B.TXT  script4.sh
