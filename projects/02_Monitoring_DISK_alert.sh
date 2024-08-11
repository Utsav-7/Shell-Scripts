#!/bin/bash

# motoring the free disk space and sent alert in mail

FU=$(df -h | egrep -v "loop|tmpfs" | grep "sdb5" |awk '{print $5}' | tr -d %)

# for mail alert before execute you need to install postfix in terminal for mail access
TO="your_email_address@gmail.com"

if [ $FU -ge 80 ]
then
	echo "WARNING : Disk Space is low" | mail -s "Disk Space ALERT!" $TO
else 
	echo "All good" 
fi 
