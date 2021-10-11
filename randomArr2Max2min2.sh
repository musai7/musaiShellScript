#!/bin/bash -x
read -p " enter a number to get a number of random numbers ; " n
max=0
max2=0
min=1000
min2=1000
for (( i=0;i<$n;i++ ))
do
        array[((i))]=$(((RANDOM%900)+100))
done
for (( i=0;i<$(($n-1));i++ ))
do
	if [ "${array[i]}" -gt "${array[i+1]}" ]
	then
		max2=$max
		max="${array[i]}"
		min2=$min
		min="${array[i+1]}"
	else
		max2="${array[i+1]}"
		min2="${array[i]}"
	fi
done
