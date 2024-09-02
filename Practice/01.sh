#!/bin/bash


##############################
## Author: Utsav Kathrotiya 
## Date: August 16, 2024
## Description: Print all the number that are divisible by 3 and 5 and not divisible by 15.(1-100)
## Version: 1.0
##############################

# divisible by 3, divisible by 5, not divisible by 3*5=15

for i in {1..100}; 
do
	if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
	then
		echo $i
	fi
done
