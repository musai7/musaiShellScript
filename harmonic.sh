#!/bin/bash -x
read -p " enter  nth harmonic number : " n
size=0
for (( count=1;count<=n;count++ ))
do
	# echo "1/$count"
	harmArray[((size++))]="1/$count +";
done
echo ${harmArray[@]}
