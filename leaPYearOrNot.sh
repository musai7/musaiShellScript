#!/bin/bash -x
read -p " enter a year number : " y;
if [ $(($y%100)) -eq 0 ]
then
	if [ $(($y%400)) -eq 0 ]
	then
		printf " given year is a leap year "
	else
		printf " given year is not a leap year "
	fi
elif [ $(($y%4)) -eq 0 ]
then
	printf " given number is a leap year "
else
	printf " given year is not a leap year "
fi

