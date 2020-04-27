#!/bin/bash -x
echo "Enter three numbers"                                 
read  a
read  b
read  c
declare -A arr
arr[0]=`expr $(($a+$b*$c))`
arr[1]=`expr $(($a*$b+$c))`
arr[2]=`expr $(($c+$a/$b))`
echo ${arr[@]}