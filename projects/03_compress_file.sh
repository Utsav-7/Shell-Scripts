#!/bin/bash

# In the given directory, if you find files more than a given size ex., 20 MB or files older than given days ex., 10 days

# Compress those files and move in  a 'archieve' folder
<< comment 
Steps of script: 
1.Provide the path of directory 
2.Check if the directory is present or not
3.Check 'archieve' folder if not already present
4.Find all the files with size more than 20MB
5.Compress each file
6.Move the compressed files in 'archieve' folder
7.Make a cron job to run the script every day at given 
comment

#$Revision:001$
#$Sunday 11 August 2024 09:12:07 PM IST$

#Variables
BASE=/home/utsav/Desktop/ShellScripts/find_command
DAYS=10
DEPTH=1
RUN=0

# Check if the directory is present or not
if [ ! -d $BASE ] 
then 
	echo "directory does not exist: $BASE"
	exit 1
fi


# Create 'archieve' folder if not present
if [ ! -d $BASE/archieve ] 
then 
	mkdir $BASE/archieve
fi

#Find the list of files largest than 20 MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do 
	if [ $RUN -eq 0]
	then 
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done
