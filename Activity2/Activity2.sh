#!/bin/sh

Today=`date +'%m%d%Y'`

for F in `ls`
do
		if [ $F == 'Activity2.sh' ];
	       	then
			continue
		else  	
			mv $F $F.$Today
		fi
done
