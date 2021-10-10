#!/bin/bash -x
read -p " enter a number : " n
temp=0
for (( counter=1;n>0;counter++ ))
do
	temp=$(($n%10));
	case "$temp" in
	0) echo "zero"
		;;
	1) echo "one"
		;;
	2) echo "two"
		;;
	3) echo "three"
		;;
	4) echo "four"
		;;
	5) echo "five"
		;;
	6) echo " six "
		;;
	7) echo " seven "
		;;
	8) echo " eight "
		;;
	9) echo " nine "
		;;
	*) echo "  invalide "
		;;
	esac
	n=$n/10
done
