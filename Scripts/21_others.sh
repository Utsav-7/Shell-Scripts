#!/bin/bash

<<comments

sleep - to create delay between two executions ex: sleep 1s/1m
exit - to stop script at a point 
	exit status $? - gives you status of previous command if that was successful

basename - strip directory info and only give filename

dirname - strip the filename and gives directory path

realpath - gives you full path for a file

if [ -d folder_name ] - if folder exists

[ ! -d foldet_name ] - if folder not exits


if [ -f file_name ] - if file exists

[! -f file_name ] - if file not exist

# BELOW IS BASH VARIABLE
RANDOM :- A random integer between 0 and 32767 is generated
	ex., echo $RANDOM


UID :- User ID of the user logged in 


if you want to run your script in background then you use nohup command
ex., nohup ./<file_name.sh> 

comments
