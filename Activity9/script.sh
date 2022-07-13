#!/bin/sh

function checkInput () {
	isGood="false"
	dir=/home/ec2-user/scripts/Linux_scripts/Activity9
	while [ $isGood ==  "false" ]; do

                read -p "Create a file name " a
		isGood="true"
		file="$dir/$a.log"
	done
	if test -f "$file" ; then
    		echo "$a exists."
	else
		touch $file
	fi
}

checkInput
