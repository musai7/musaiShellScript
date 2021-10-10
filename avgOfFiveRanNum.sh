#!/bin/bash -x
read -p "enter number of random numbers you want : " n
sum=0
for ((counter=1;counter<=n;counter++))
do
	temp=$sum;
	ranVal=$(((RANDOM%90)+10));
	sum=$(($temp+$ranVal));
done
avg=$(($sum/$n));
printf " sum of random numbers are : " $sum;


