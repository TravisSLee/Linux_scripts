#!/bin/sh

RANDOMNUM=''
BONUSBALL=$((RANDOM % 10))
TODAY=`date +'%m%d%Y'`
FILENAME=Lottery$TODAY.log
count=1

touch $FILENAME

while [ $count -le 5 ];
do
	number=$((1 + $RANDOM % 50))
	COMPARE=$RANDOMNUM | grep $number | wc -l 
	if [ $COMPARE -eq 1 ]
	then
		continue
	else
		RANDOMNUM+=" ${number}"
		((count++))

	fi
done

RANDOMNUM+=" ${BONUSBALL}"

echo $RANDOMNUM >> $FILENAME

echo $RANDOMNUM 

echo "Lottery numbers have been chosen!"
