#!/bin/bash

#################################
## Author: Utsav Katharotiya
## Subject: Check if docker service is active or not.
## Date: August 31, 2024
#################################

echo "==========Status Check docker service=========="
status="`systemctl status docker | awk 'NR==3 {print}' | cut -d ':' -f 2 | cut -d '(' -f 1`"

echo $status
if [ $status = "active" ];
then 	
	echo "Service is running fine....."
else
	echo "Service is not running"
fi

################ Notes
## Here we use NR==3 means we get only third line from starting.
## then we cuting out status using -d delimeter ':' and -f 2 means we get 2nd field that is out status
## then we again cutting using -d delimeter '(' and -f 1 means we got only 1st field
## if write inside of `` that assume as command
