# Write a shell program to print the first 25 Fibonacci numbers.

clear
echo "The first 25 Fibonacci numbers are as follows: "
f1=0
f2=1
fib="${f1} ${f2} "
count=0
while [ $count -lt 23 ]; do
  c=$(($f1+$f2))
  fib="${fib} ${c}"
  f1=$f2
  f2=$c
  count=$((count+1))
done
echo $fib

# Output:
# The first 25 Fibonacci numbers are as follows:
# 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368
