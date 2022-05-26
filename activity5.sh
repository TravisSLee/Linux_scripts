#!/bin/sh

read -p "Enter a word and it will magically be reversed: " input

copy=${input}
len=${#copy}
for((i=$len-1;i>=0;i--)); do 
	rev="$rev${copy:$i:1}"; 
done

echo "Your input: $input, Reversed: $rev"
