#!/bin/bash -x
for file in `ls *.log.1`
do
	filename=`echo $file | awk -F. '{print $1}'`;
	ext=`echo $file | awk -F. '{print $2 "." $3}'`;
	dt=`date +"%d%m%y"`;
	updname=$filename-$dt.$ext;
	mv $file $updname;
done
