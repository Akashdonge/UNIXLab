# Write a shell program to find the largest of three numbers using a function.

findlar3() {
  
  lar3=$1
  if [ $2 -gt $lar3 ]
  then
    lar3=$2
  fi 
  if [ $3 -gt $lar3 ]
  then
    lar3=$3
  fi 
  echo "$lar3"
}


read -p "Enter three numbers: " num1 num2 num3
echo "The three entered numbers are $num1, $num2, and $num3"
result=$(findlar3 $num1 $num2 $num3)
echo "The largest number is $result."

# ❯ sh script12.sh
# Enter three numbers: 12 14 1
# The three entered numbers are 12, 14, and 1
# The largest number is 14.
