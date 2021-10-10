#!/bin/bash -x
max=0
min=1000
for ((count=1;count<=5;count++))
do
ranNum=$(((RANDOM%900) +100))
	if [ $ranNum -gt $max ]
	then
		if [ $ranNum -lt $min ]
		then
			min=$ranNum
		fi
		max=$ranNum;
	elif [ $ranNum -lt $min ]
	then
		min=$ranNum;
	fi
done
printf " maximumu of random numbers is : " $max
printf " minimumu of random numbers is : " $min
