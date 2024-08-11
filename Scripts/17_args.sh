#!/bin/bash

# check the length of arguments if it is 0 then exit with message
if [ $# -eq 0 ]
then 
	echo "Please provide atleast one agrument"
	exit 1
fi


# Work with argument

echo "First argument is $1"
echo "Second argument is $2" 

# see all the listed arguments in input
# like, $ bash 17_args.sh hello ram 23 324
echo "All the arguments are :- $@"

# count number argument input
echo "Number of arguments are :- $#"

# For loop to access the values from the arguments
for filename in $@
do 
	echo "Copting file - $filename"
done 
