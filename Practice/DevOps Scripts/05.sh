#!/bin/bash

###############################
## Author: Utsav Katharotiya
## subject: Install software in our system if not installed. 
##	    first of all we check file present in our system or not.
## Date: August 31, 2024
###############################

echo "Download the prometheus binaries. "

## -e means if exists
if [ -e /home/utsav/prometheus-2.42.0.linux-amd64.tar.gz ];
then 
	echo "Files is already existing so no need to download"
	tar -zxvf /home/utsav/prometheus-2.42.0.linux-amd64.tar.gz
else
	echo "Binaries doesn't exists in system first we need to download it."
	wget https://github.com/prometheus/prometheus/releases/download/v2.42.0/prometheus-2.42.0.linux-amd64.tar.gz
	tar -zxvf /home/utsav/prometheus-2.42.0.linux-amd64.tar.gz
	echo "Files has been extracted, you can start prometheus."
fi
