#!/bin/bash -x
read -p " enter a number : " n
array=0
for (( i=2;i<=$n;i++ ))
do
	num=$(factor $i | grep $i | cut -d ":" -f2 | cut -d " " -f 2)
	if [ $num -eq $i ]
	then
		if [ $(($n%$i)) -eq 0 ]
		then
		factarray[((array++))]="$i"
		fi
	fi
done
echo ${factarray[@]}
