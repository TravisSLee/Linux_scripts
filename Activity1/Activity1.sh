$!/bin/sh

Today=$(date +'%m/%d/%Y')
Time=$(date "+%T")
Path=$(pwd)
Number=$(ls | wc -l)
Big=$(find . -type f | xargs ls -1S | head -n 1)

echo "The username is $USER."
echo "Today's datee is $Today."
echo "The time is $Time."
echo "Your current working directory is $Path."
echo "The number of files in this directory is $Number."
echo "The biggest files in this directory is $Big."

