#!/bin/bash

# ################### Varient - 1 
<<comment
for i in 1 2 3 4 5;
do
	echo "Number... $i"
	sleep 2
done 
comment


# ################### Varient - 2 
<<comment
for i in {1..10};
do 
	echo "Number... $i"
	sleep 1
done
comment


# ################## Varient - 3
<<comment
for (( i=0; i <= 10 ; i++ ))
do 
	echo "Number... $i"
	sleep 1
done
comment

# you can also increment using i=$((i + 1)) 

# ################# Infinite Loop

for (( ; ; )) 
do 
	echo "Infinite Loops"
	sleep 1
done

