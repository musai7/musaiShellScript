read -p " enter a number : " n
count=1
power=1
while [ $count -le $n ]
do
	power=$(($power*2))
	echo "2^$count = $power"
	((count++))
	if [ $power -eq 256 ]
	then
		break
	fi
done
