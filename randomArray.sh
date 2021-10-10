#!/bin/bash -x
read -p "enter number of repetations for random number : " n
arrayIndex=0
max=0
secmax=0
for (( counter=0;counter<=n;counter++ ))
do
	randomnum=$(((RANDOM%900)+100));
	randomarr[((arrayIndex++))]=$randomnum;
	if [ $randomnum -gt $max ]
	then
		secmax=$max
		max=$radomnum
	fi
done
