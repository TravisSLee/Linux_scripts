#!/bin/sh



RANDOMNUM=''
BONUSBALL=$((RANDOM % 10))
LotteryNum=$(tail -1 ./Lottery05262022.log)
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
	number=$((1 + $RANDOM % 50)) 
	if [[ $RANDOMNUM == *$number* ]]; then
		continue
	else
		RANDOMNUM+=" ${number}"
		((count++))

	fi
done

RANDOMNUM+=" ${BONUSBALL}"
echo "Today's numbers are:$LotteryNum"

echo "Your numbers are:$RANDOMNUM"

ONE=1
if [[ $LotteryNum  == $RANDOMNUM ]]; then
	echo "You have won!"
else
	echo "Sorry, you didn't  win! Try again later."
fi
