#!/bin/bash

trap "echo 'Script interrupted '; exit" SIGINT

while true; do
	echo "Running... Press Ctrl+c to interrupt."
	sleep 1	
done
