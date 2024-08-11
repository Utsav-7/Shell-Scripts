#!/bin/bash

# if you want to execute your script at specific time or date then you can use A# AT and Crontab 

<< comment 
ex., 
	at 12:00 PM 
		ls
		pwd
	Ctrl + D

	at 23:00 31 July 2023
		bash script.sh
	ctrl + D

this above command run in terminal screen

-> atq : to  check  scheduled job
-> atrm<id> : to remove the schedule

=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=
If you want to execute the script at frequant time period ( like Every sunday, every day 10 am ) then you will use crontab 

-> crontab -l : To check the exiting jobs
-> crontab -e : To add new job

ex., 

	* * * * * cd /home/utsav/Desktop/ShellScript/ && ./<file_name.sh>
	| | | | |			
	| | | | day of a week (0-6)(Sunday=0)
	| | | month(1-12)
	| | day of month (1-31)
	| hour (0-23)
	minute (0-59)

ex., 30 18 * * * :-> run at 6:30 everyday
     30 18 * * 0 :-> run at every sunday 6:30
     
for references: crontab.guru 	



comment
