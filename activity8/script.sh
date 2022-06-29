#!/bin/sh

declare -a numArr
count=0

function checkInput () {
	isGood="false"
	
	while [ $count -lt 10 ]; do
		if [[ $b == "No" ]]; then
			break
		fi
	 if [[ $count -lt 5 ]]; then
		while [ $isGood ==  "false" ]; do

                        read -p "Add a number to your array: " a
			if [[ $a =~ [0-9] ]]; then
				isGood="true"
				((count++))
				numArr[$count]=$a
			else
				echo "Not a number. Try again."
				continue
			fi
		done	
                elif [[ $count -ge 5 ]]; then
                        while [ $isGood == "false" ]; do

				read -p "You've added the minimum 5 numbers, do you want add more? Yes or No " b
				if [[ $b ==  "Yes" ]]; then
					read -p "Add a number to your array: " a
					 if [[ $a =~ [0-9] ]]; then
                                		isGood="true"
						((count++))
						numArr[$count]=$a
                        		else
                                		echo "Not a number. Try again."
                                		continue
					 fi
				 else
					 break
				fi

		done
                else
                        read -p "Add your last number. " a
                        numArr[$count]=$a
                fi
		isGood="false"
	done

}

function getSum () {
	sum=0
        for i in "${numArr[@]}"
	do
		let sum+=$i
	done
	echo "The sum of all numbers is: $sum"
}

function getAvr () {
	declare -i n=${#numArr[@]}
	declare -i  sum=0
        for i in "${numArr[@]}"
        do
                declare -i sum+=$i
        done
	avr=$(echo "scale=3; $sum/$n" | bc)

        echo "The average is: $avr"	

}

function getProd (){
	prod=1
        for i in "${numArr[@]}"
        do
                let prod=$prod*$i
        done
	echo "The product of mult is: $prod"
}

function minMax () {
	max=${numArr[0]}
	min=${numArr[1]}

	for i in "${numArr[@]}"; do
  		(( i > max )) && max=$i
		(( i < min )) && min=$i

	done
	echo "Max value is $max, minimal value is $min"
}

function echoArr () {
	echo "Here are your numbers: "
	echo ${numArr[*]}
}
checkInput
echoArr
getSum
getAvr
getProd
minMax
