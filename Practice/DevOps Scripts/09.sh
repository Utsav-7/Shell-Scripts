#!/bin/bash

############################
## Author: Utsav Katharotiya
## Subject: Write a shell script which accept a command
##	    line arguments and installs many software.
## Date: August 31, 2024
############################

if [[ $# -eq 0 ]];
then
	echo "Usage: Please provide software names as command line arguments"
	exit 1
fi

## id -u --> gives the id of current user. id for root user is always 0.
if [[ $(id -u) -ne 0 ]];
then
	echo "Please run from root user or with sudo privilage"
	exit 2
fi


## $@ --> Values of the arguments that are passed in the program. This will be much helpful if we are not sure about the number of arguments that got passed
## $# --> count number of argument are passed
## $$ --> check process id
## $? --> to check execution status of previous commands
## $* --> to get all the listed arguments as double-quoted
## $0 --> to get file name 
## $1...$n --> positional arguments from 1...n if it is >10 then ${10}, ${11},... 
## which $software --> chech software is exist or not and output send to /dev/null


for softwares in $@
do 
	if which $softwares &> /dev/null
	then
		echo "already $softwares is installed"
	else
		echo "Instlling $softwares.... "
		## -y means Yes and all output will send to /dev/null
		apt install $softwares -y &> /dev/null
		if [[ $? -eq 0 ]];
		then 
			echo "Successfully installed $softwares	packaages"
		else
			echo "Unable to install $softwares"
		fi
	fi
done
