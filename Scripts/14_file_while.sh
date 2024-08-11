#!/bin/bash

# Content reading from file using while loop

while read myVar
do 
	echo $myVar
done < names.txt


