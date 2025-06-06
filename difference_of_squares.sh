#!/bin/bash

#Check if the number is a valid number 
if [ "$#" -ne 1 ] || ! [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "Usage: $0 <non-negative integer n>" >&2
  exit 1
fi

# Calculate the square of sum of first n natural numbers
n=$1
sum=$(( n * (n+1) / 2 ))
square_of_sum=$(( sum * sum ))

echo "The number is : " "$n"
echo " The sum of first $n numbers is: " "$sum"
echo "The square of sum of first $n numbers is :" "$square_of_sum"

#calculate the sum of squares of first n natural numbers 
sum_of_squares=$(( n * (n+1) * (2*n + 1) / 6 ))
echo "The sum of squares of first $n numbers is :" "$sum_of_squares"

#calculate the difference 
difference=$(( square_of_sum - sum_of_squares ))
echo " The difference is : " $difference
