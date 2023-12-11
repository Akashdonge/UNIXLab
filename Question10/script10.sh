# Write a shell program to print the prime numbers between the specified range.

clear
read -p "Enter the starting value of the range: " start
read -p "Enter the ending value of the range: " end
primes=""

for var in $(seq $start $end); do 
  flag=0
  for num in $(seq 2 $((var/2))); do
    if [ $((var%num)) -eq 0 ]
    then
      flag=1
      break
    fi
  done
  if [ $flag -eq 0 -a $var -ne 1 ]
  then
    primes="${primes} ${var}"
  fi
done
echo $primes
    
# Output:
# Enter the starting value of the range: 1
# Enter the ending value of the range: 100
# 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97
