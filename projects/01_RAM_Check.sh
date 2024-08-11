#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
THRESHOULD=800

if [ $FREE_SPACE -lt $THRESHOULD ] 
then	
	echo "WARNING: RAM is running low - $FREE_SPACE"
else
	echo "RAM Space is sufficient - $FREE_SPACE M"

fi



