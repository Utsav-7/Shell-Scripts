#!/bin/bash

#################################
## Author: Utsav Katharotiya
## Subject: Write a script to generate CPU load
##	    alert for our systems.
## Date: September 02, 2024
#################################

echo "CPU Load average value check"

load=`top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}' | cut -d '%' -f1`

echo $load

if [[ ${load} > 1 ]];
then
	echo "CPU load is very high: $load"
else
	echo "Load is normal."
fi
