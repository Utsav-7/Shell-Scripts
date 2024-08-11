#!/bin/bash

FILEPATH="/home/utsav/Desktop/ShellScripts/utsav.test"

if [ -f $FILEPATH ] 
then
	echo "File exists"
else 
	echo "Creating file now"
	touch utsav.test
fi 

