#!/bin/bash

# ################## Varient - 1
<<comment
i=10
while [ $i -ge 0 ];
do 
	echo "Number... $i"
	let i--;
	sleep 1
done 
comment

# ################# Varient - 2
<<comment
i=5
while (( i > 0 ))
do 
	echo "Number... $i"
	let i--;
	# i=$((i - 1))
	sleep 1
done
comment

# ################ Infinite Loop - 1
<<comment
while true;
do 
	echo "Infinite Loop - 1"
	sleep 1;
done
comment

# ############### Infinite Loop - 2

while :
do 
	echo "Infinite Loop - 2 "
	sleep 1;
done
