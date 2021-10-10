#!/bin/bash -x
read -p " enter a single digit number day : " n
if [ $n -lt 7 ]
then
	if [ $n -lt 3 ]
	then
		if [ $n -eq 0 ]
		then
			echo " sunday "
		elif [ $n-eq 1 ]
		then
			echo " monday "
		else
			echo " tuesday "
		fi
	elif [ $n -ge 3 ]
	then
		if [ $n -eq 3 ]
		then
			echo " wednesday "
		elif [ $n -eq 4 ]
		then
			echo " thursday "
		elif [ $n -eq 5 ]
		then
			echo " friday "
		else
			echo " saturday "
		fi
	fi
else
	echo " invalide number "
fi
