#!/bin/sh


ISNUMBERA=0
ISNUMBERB=0

while [ $ISNUMBERA -eq 0 ]; do
	read -p "Enter your first number: " A
	if [[ $A =~ [0-9] ]]; then
		((ISNUMBERA++))
	else
		echo "Not a number. Try again."
		continue
	fi
done

while [ $ISNUMBERB -eq 0 ]; do
        read -p "Enter your second  number: " B
        if [[ $B =~ [0-9] ]]; then
		((ISNUMBERB++))
        else
		echo "Not a number. Try again."
                continue
        fi
done


 if [[ $ISNUMBERA -gt  $ISNUMBERB ]]; then
        echo "Your first input is greater than the first"
 else
        echo "Your second input is greater than or equal to your first input."
 fi



