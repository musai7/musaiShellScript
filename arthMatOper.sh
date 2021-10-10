#!/bin/bash -x
read -p "enter a number : " a
read -p "enter a number : " b
read -p "print a number : " c
m=$(($a+$b*$c))
n=$(($c+$a/$b))
o=$(($a%$b+$c))
p=$(($a*$b+$c))
if [ $m -gt $n ]
then
   if [[ $m -gt $o && $m -gt $p ]]
	then
		printf " a+b*c is greater than all operations "
	elif [ $o -gt $p ]
	then
		printf " a%b+c is greater than all operations "
	else
		printf " a*b+c is greater than all operations "
	fi
elif [[ $n -gt $o && $n -gt $p ]]
then
	printf " c+a/b is greater than all operations"
	if [ $0 -gt $p ]
  then
		printf " a%b+c is greater than all operation"
	else
		printf " a*b+c is greater than all operation"
	fi
elif [ $o -gt $p ]
then
	printf "  a%b+c is greater than all operation"
else
		printf " a*b+c is greater than all operation"
fi
