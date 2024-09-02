#!/bin/bash

#################################
## Author: Utsav Katharotiya
## Subject: Schedule a job automatically to run at regular interval and check 
##	    if docker service is down, if its down start the service.
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
	systemctl start docker
fi


## So we need to run this script automatically at specific time
## We use crontab for this automation
## * * * * * /home/utsav/Desktop/ShellScripts/Practice/DevOps/08.sh > /dev/null
## | | | | |
## | | | | Day week (0-7)
## | | | Month (1-12)
## | | Day (1-31)
## | Hours (0-23)
## Minute (0-59)

## ex., * * * * * --> run at every minute
##	5 20 * * * --> every day 8:05 PM
## 	5 20 19 * * --> At 20:25 on day-of-month 19.
##	5 20 19 9 * --> At 20:25 on day-of-month 19 in September.
##	5 20 19 9 0 --> At 20:25 on day-of-month 19 and on Sunday in September.

