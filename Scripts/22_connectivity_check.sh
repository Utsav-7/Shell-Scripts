#!/bin/bash

read -p "Which site you want to check? " site

ping -c 1 $site
#sleep 3s

# $? is to check status of previous command if 0 - Successful execution
#					       1 - Unsuccessful/ error execution 

if [ $? -eq 0 ]
then 
	echo "Successfully connected to $site" 
else 
	echo "Unable to connect $site"
fi


