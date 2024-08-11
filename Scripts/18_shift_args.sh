#!/bin/bash

# To create a user, provide username and description

echo "Creating use"
echo "Username is $1"

shift
echo "Description is $@"

# shift opration is used to save remaining arguments in input and store in $2
<<comments
if, $ bash 18_....sh hello how are you?

Output: 
	$1=hello
	$2=how are you ?

without shift operation 
Output: 
	$1=hello
	$2=how
comments


