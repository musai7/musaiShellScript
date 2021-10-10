#!/bin/bash -x
while [ true ]
do
sum=0
read -p " enter a number between 1 to 100 : " n
if [ $n -gt $(($n/2)) ]
then
	echo "given number is greater than n/2"
else
	echo " given number is less than n/2 "
fi
while [ $n -gt 0 ] || [ $sum -gt 9 ]
do
	if [ $n -eq 0 ]
	then
		n=$sum
		sum=0
	fi
	sum=$(($sum+$n%10))
	n=$(($n/10))
done
if [ $sum -eq 1 ]
then
	echo "given number is magic number "
	break
fi
done
