#!/bin/bash

############################
## Author: Utsav Katharotiya
## Subject: We will loop over the content of directory specified, 
##	    and delete all the contents one by one.
## Date: August 31, 2024
############################

for folder in $(find -type d);
do
	echo "The folder is $folder"
	## -d : this directory is exists
	if [ -d test ];
	then 
		echo "This folder exists."
		echo "Removing the folder."
		rm -rf test
	else
		echo "Test folder does not exists."
	fi
done
