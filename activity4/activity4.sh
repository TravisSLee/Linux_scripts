#!/bin/sh

read -p "Enter your password: " input

n=`expr "$input" : '.*'`

if [[ $(echo "$input" | awk '/[a-z]/ && /[A-Z]/ && /[0-9]/') && $n -ge 8 ]]; then
    echo "String meets your requirements"
else
    echo "String does not meet your requirements"
fi



