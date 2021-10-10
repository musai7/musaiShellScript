#!/bin/bash -x
read -p "enter foldername : " fname
if [ -d $fname ]
then
	printf "folder already exists"
else
	mkdir -v $fname
fi


