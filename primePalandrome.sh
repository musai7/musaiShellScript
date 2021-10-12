#!/bin/bash -x
result=0
function palandrome(){
	echo n=$(($1))
	temp=$n
	while [ $n -ne 0 ]
	do
		rem=$(($n%10))
		result=$(($result*10+$rem))
		n=$(($n/10))
	done
	if [ $result -eq $temp ]
	then
		echo "given number is a prime palandrome number : $result "
	else
		echo "given number is not a prime palandrome number : $result "
	fi
}
function prime(){
	echo num=$(($1))
	prm=$(factor $n | grep $n | cut -d ":" -f2 | cut -d " " -f2)
	if [ $prm -eq $n ]
	then
		echo " prime number "
	else
		echo " not prime number "
	fi
}
read -p " enter a number " n
prm="$(prime $n )"
pal="$( palandrome $n )"
