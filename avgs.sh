#!/bin/bash

read -p "Enter the numbers you wish to average: " -a theArray

#determines the min and max
min=${theArray[0]}
max=${theArray[1]}
for (( i=0; i<${#theArray[*]}; i++ )); do
	if (( ${theArray[i]} < $min )); then
		min=$theArray[i];
	fi
	if [[ ${theArray[i]} > $max ]] ; then
		max=${theArray[i]};
	fi
done
echo "min=$min, max=$max"

#now let's average our figures
total=0
for (( i=0; i<${#theArray[*]}; i++ )); do
        total=$((total+${theArray[i]}));
done
echo "$total / ${#theArray[*]}" | bc -l


