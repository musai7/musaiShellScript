#!/bin/bash -x
read -p " enter a number : " n
temp=0
if [[ $n -eq 0 || $n -eq 1 ]]
then
	echo "entered number is not a prime number"
	elif [ $n -gt 2 ]
	then
		for (( counter=2;counter<=$n/2;counter++ ))
		do
			i=$(($n%$counter))
			if [ $i -eq 0 ]
			then
				printf " given number is not a prime number : $n "
				exit 0
			fi
		done
		printf " given number is prime number : $n"
	else
		printf " given number prime number : $n "
fi
