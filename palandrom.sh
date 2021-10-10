 #!/bin/bash -x
result=0
function palandrom() {
	echo n=$1
	while [ $n/10 -ne 0 ]
	do
		temp=`expr $n%10`
		result=`expr $result*10+$temp`
		n=`expr $n/10'
	done
	if [ $result -eq $n ]
	then
		echo 
	else
		echo $0
	fi
}
read -p " enter a number to check palandrom or not : " num
pal="$(palandrom $num )"
