#!/bin/bash -x
read -p "for degC to degF type -->degF or for degF to degC type --> degC :" d
read -p "enter degree value : " deg
case "$d" in
	degC) echo "$degC=$((($deg-32)*5/9)) degC"
		;;
	degF) echo "$degF=$((($deg*9/5)+32)) degF"
		;;
esac
