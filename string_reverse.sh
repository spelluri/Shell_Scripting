#!/bin/bash 

input=$1
reversed=""

for(( i=${#input};i>=0;i--));do
   reversed+=${input:i:1}
done 

echo "$reversed"
