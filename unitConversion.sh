#!/bin/bash -x
read -p " for feet to inch enter 1 for sq feet to sq meters 2 for square meters to acres enter 3 " n
case "$n" in
	1) read -p "enter number of inches convert to feets : " inches
		echo $feets=$(($inches/12))
		;;
	2) read -p "enter number of square feets convert to sq meters : " sfeets
		echo $squmeters=$(($sfeets/10))
		;;
	3)  read -p "enter number of square meters convert to no acres : " smeters
                echo $acres=$(($smeters/4047))
		;;
esac

