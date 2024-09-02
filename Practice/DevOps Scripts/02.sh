#!/bin/bash

################################
## Author: Utsav Katharotiya 
## Subject: To Check disk utilization
## Date: August 30, 2024
################################

echo "Check disk usage in Linux System"
disk_size=`df -h | grep "/dev/sdb5" | awk '{print $5}' | cut -d "%" -f 1 `
echo "$disk_size% of disk is filled"

if [ $disk_size -gt 80 ];
then 
	echo "Disk is utilized more than 80%, expand disk or delete files soon."
else
	echo "enough disk is available"
fi 

