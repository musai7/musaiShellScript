#!/bin/bash -x
isHead=1;
flipcoin=$((RANDOM%2))
if [ $isHead -eq $flipcoin ]
then
	printf " HEADS.."
else 
	printf "TAILS.."
fi
