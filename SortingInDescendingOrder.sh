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
for (( i = 0; i<=3 ; ++i ))
do
   for (( j = $i+1; j<=3 ; ++j ))
   do
      if [ ${arr[$i]} -lt ${arr[$j]}  ]; then
           t=${arr[$i]}
           arr[$i]=${arr[$j]}
           arr[$j]=$t
      fi
   done
done

#
# Print the sorted number
#
echo -e "\nSorted Numbers in descending Order:"
for (( i=0; i<=3; i++ ))
do
  echo ${arr[$i]}
done
