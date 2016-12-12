#!/bin/bash

read -p "Enter the numbers you wish to compare: " -a theArray
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

	
