#!/bin/sh



RANDOMNUM=''
BONUSBALL=$((RANDOM % 10))
TODAY=`date +'%m%d%Y'`
FILENAME=Lottery$TODAY.log
count=1
echo "Would like to play the lottery? Yes or No."

read remark

if [[ $remark -eq "Yes" ]];
then 
	continue
else
	break
fi



while [ $count -le 5 ]; do
	echo "number"
	number=$((1 + $RANDOM % 50)) 
	if [ $RANDOMNUM | grep -c $number  == 1 ]; then
		continue
	else
		RANDOMNUM+=" ${number}"
		((count++))

	fi
done

RANDOMNUM+=" ${BONUSBALL}"



echo $RANDOMNUM 

echo "You have won!"
