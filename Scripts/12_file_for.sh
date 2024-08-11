#!/bin/bash 

# Getting values from file name.txt

FILE="/home/utsav/Desktop/ShellScripts/names.txt"

for name in $(cat $FILE)
do 
	echo "Name is $name"
done


