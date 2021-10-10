#!/bin/bash -x
for file in  `ls *.log.1`
do
	occurence=`echo $file | cat $file | grep -o systemd | wc -w`;
	if [ $occurence -gt 0 ]
		then
		printf " number of occurences of systemd : "$occurence
	fi
done

