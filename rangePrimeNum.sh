#!/bin/bash -x
temp=0
read -p " enter a number for starting range : " r1
read -p " enter a number for ending range : " r2
for (( counter=2;counter<=$r2;counter++ ))
do
flag=0
if [ $counter -ge $r1 ]
then
if [ $r1 -gt 2 ]
then
	for (( i=2;i<=$counter/2;i++ ))
	do
		if [ $(($counter%$i)) -eq 0 ]
		then
			flag=$(($flag+1))
			break
		fi
	done
      if [ $flag -eq 0 ]
		then
			array[(($temp))]="$counter"
			temp=$(($temp+1))
		fi
fi
fi
done
echo ${array[@]}

