#!/bin/bash -x
read -p " entered no of wins " w
win=1
loose=0
noOfWins=0
while [ true ]
do
	head=$((RANDOM%2))
	if [ $head -eq $win ]
	then
		noOfWins=$(($noOfWins+$head))
		if [ $noOfWins -eq $w ]
		then
			break
		fi
	fi
done


