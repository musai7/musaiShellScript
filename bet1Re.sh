#!/bin/bash -x
bet=100
win=1
loose=0
noOfWins=0
while [ true ]
do
	bet1re=$((RANDOM%2))
	noOfBets=$(($noOfBets+1))
	if [ $bet1re -eq $win ]
	then
		noOfWins=$(($noOfWins+1))
		bet=$(($bet+5))
	else
		bet=$(($bet-5))
	fi
	if [ $bet -eq 200 ] || [ $bet -eq 0 ]
	then
		break
	fi
done
echo "bet=$bet"
echo "no of bets =$noOfBets"
echo " no of wins =$noOfWins"
echo "no of losts =$(($noOfBets-$noOfWins))"

