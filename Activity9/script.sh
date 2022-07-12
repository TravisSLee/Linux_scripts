#!/bin/sh

function checkInput () {
	isGood="false"

	while [ $isGood ==  "false" ]; do

                read -p "Create a file name " a
		isGood="true"
		
		
	done
}
