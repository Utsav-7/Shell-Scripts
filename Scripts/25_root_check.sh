#!/bin/bash

# this script is for chech user is root or not

if [ $UID -eq 0 ]
then  
	echo "User is root" 
else
	echo "Use is not root"
fi


