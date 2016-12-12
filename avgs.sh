#!/bin/bash

read -p "Enter the numbers you wish to average: " -a theArray
total=0
for (( i=0; i<${#theArray[*]}; i++ )); do
        total=$((total+${theArray[i]}));
done
avg=$((total / ${#theArray[*]}))
echo $avg

