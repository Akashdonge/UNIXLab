# Write a shell program to print the given number in reversed order.

clear
read -p "Enter the number: " n
d=0
rev=0
while [ $n -gt 0 ]; do
  d=$((n%10))
  rev=$((rev*10+d))
  n=$((n/10))
done
echo "Reversed number: ${rev}"

# Output:
# Enter the number: 123456789
# Reversed number: 987654321
