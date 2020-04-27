#!/bin/bash -x
echo "Enter three numbers"                                 
read  a
read  b
read  c
res1=`expr $(($a+$b*$c))`
echo res1