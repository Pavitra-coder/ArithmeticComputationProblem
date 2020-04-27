#!/bin/bash -x
echo "Enter three numbers"                                 
read  a
read  b
read  c
res3=`expr $(($c+$a/$b))`
echo res3