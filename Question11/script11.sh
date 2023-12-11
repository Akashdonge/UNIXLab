# Write a shell program to search the given key element using linear search.

arr=()
read -p"Enter the length of the array: " len

for num in $(seq 0 $((len-1))); do
  read -p "Enter element $((num+1)): " arr[num]
done

echo "${arr[@]}"

read -p"Enter the element to be searched: " ele
index=-1
for num in $(seq 0 $((len-1))); do
  if [ "${arr[num]}" == "$ele" ]
  then
    index=$num
    break
  fi
done

if [ $index -ne -1 ]
then
  echo "The index at which the element $ele is found is $index"
else
  echo "Element not found"
fi

# Output: 
# ❯ sh script11.sh
# Enter the length of the array: 5
# Enter element 1: 12
# Enter element 2: 14
# Enter element 3: 25
# Enter element 4: 32
# Enter element 5: 1
# 12 14 25 32 1
# Enter the element to be searched: 1
# The index at which the element 1 is found is 4
