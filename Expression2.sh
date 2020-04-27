#!/bin/bash -x
echo "Enter three numbers"                                 
read  a
read  b
read  c
res2=`expr $(($a*$b+$c))`
echo res2