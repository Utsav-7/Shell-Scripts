#!/bin/bash

######################################
## Author: Utsav Katharotiya
## Subject: Read the user input and print
##	    the status of service in system
## Date: September 01, 2024
######################################


## option of reading input from user
## read <options> <arguments>
## -a <array>     --> Assign the provided word sequence to a variable named <array> 
## -d <delimiter> --> Read a lines until the provided <delimiter> instead of a new line	
## -e             --> Starts a interactive shell session to obtain the line to read.
## -i <prefix>    --> Add initial text before reading a line as prefix.
## -n <number>	  --> Returns after reading the specified number of characters while honoring the delimiter to terminate early.
## -N <number>    --> Returns after reading the specified number of chars, ignoring the delimiter.
## -p <promt>	  --> Outputs the promt string before reading user input.
## -r 		  --> Disable backslashes to escape characters.
## -s 		  --> Does not echo the user's input.
## -t <time> 	  --> The command times out after the specified time in seconds.
## -u <file descriptor> --> Read from file descriptor instead of standard input.


echo "Welcome to service status check script."
read -p "Enter the service name to check its status: " service_name
if [ -z $service_name ];
then 
	echo "Please enter a valid service name."
else
	systemctl status $service_name
fi
