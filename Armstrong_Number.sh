#!/bin/bash

number=$1
length=${#number}
sum=0

for (( i=0 ; i<length ; i++ )); do 
    digit=${number:i:1}
    sum=$(( sum + digit**length ))
done
 echo " The final Sum value is : " "$sum"
if (( sum == number )) ; then 
   echo "The Number is a Armstrong Number" 
else
   echo "The Number is not an armstrong Number"
fi
