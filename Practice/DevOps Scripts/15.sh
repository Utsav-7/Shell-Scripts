#!/bin/bash

#################################
## Author: Utsav Katharotiya
## Subject: To take the backup of directories in system
## 	    and transfer it to specified location.
## Date: September 02, 2024
#################################

backup_dir=("/home/utsav/Desktop")
dest_dir="/home/utsav/Desktop/backup"

mkdir -p $dest_dir

backup_date=$(date +%b-%d-%y)

echo "Starting backup of: ${backup_dir[@]}"

for i in "${backup_dir[@]}";
do
	sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i
	if [ $? -eq 0 ];
	then 
		echo "$i backup succeded."
	else
		echo "$i backup failed."
	fi
	
	cp /tmp/$i-$backup_date.tar.gz $dest_dir
	
	if [ $? -eq 0 ];
	then 
		echo "$i transfer succeeded."
	else
		echo "$i transfer failed."
	fi
done

sudo rm /tmp/*.gz
echo "Backup is done."
