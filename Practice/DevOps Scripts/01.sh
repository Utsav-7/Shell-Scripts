#!/bin/bash

###################################
## Auther: Utsav Katharotiya
## Subject: How to install Software 
##          in multiple flavours of 	
##          OS.
## Date: August 30, 2024
###################################

echo "Script to install git"
echo "Installation started..."

# () is used to store actual value or return value when without () you get blank
if [ "$(uname)" == "Linux" ];
then 
	echo "This is Linux box, installing git."
	apt install git -y 
elif [ "$(uname)" == "Darwin" ];
then 
	echo "This is not linux box."
	echo "This is MacOS."
	brew install git
else
	echo "not installing"
fi 
