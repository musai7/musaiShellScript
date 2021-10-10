 #!/bin/bash -x
result=0
function palandrom() {
	echo "$((n=$1))"
	x=$n
	while [ $(($n/10)) -ne 0 ]
	do
		temp=$(($n%10))
		result=$(($result*10+$temp))
		n=$(($n/10))
	done
	if [ $result -eq $x ]
	then
		echo " entered number is palandrom : $x "
	else
		echo " entered number is not a palandrom : $x "
	fi
}
echo -n " enter a number to check palandrom or not : "
read num1
read num2
pal="$(palandrom $num1 )"
pal="$(palandrom $num2 )"
