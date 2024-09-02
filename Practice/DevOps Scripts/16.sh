#!/bin/bash

#############################
## Author: Utsav Katharotiya
## Subject: Write a script to create a service to monitor disk
## Date: September 02, 2024
#############################

<<comment
--> service concept..........
UNIT	      --> Name of the service
LOAD	      --> To know if it is loaded in the memory
ACTIVE	      --> State in which it is can be active, reloading, inactive, failed, activating, deactivating
SUB	      --> State of activation can be in one of the following state: dead, closed, failed, inactive or running
Description   --> Brief description of the service
Unit	      --> This section consists of description, documentation details etc.
Install       --> This section is used to define different levels of target in the system
Service	      --> This section defines the service type, username, group, what to do in failure, restart timeout.
comment


while true
do
	date >> /var/log/fs-monitor.txt
	sudo df -h >> /var/log/fs-monitor.txt
	sleep 120
done

<<comment
if you want to create service then follow below steps
1. open -->  "vi /etc/systemd/system/<your_service_name>.service"
2. edit the file opend file,
	for our program we need to add 
	
	Description=FS Monitoring service
	
	[service]
	Type=simple
	User=root
	Group=root
	TimeoutStartSec=0
	Restart=on-failure
	RestartSec=30s
	#ExecStartPre=
	ExecStart=/home/vargrant/16.sh --> our script location
	SyslogIdentifier=Diskutilization

	[Install]
	WantedBy=multi-user.target	


Start service ==> systemctl start <service_name>.service
Stop Service ==> systemctl stop <service_name>.service
comment



