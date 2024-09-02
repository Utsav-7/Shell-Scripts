#!/bin/bash

###################################
## Author: Utsav Katharotiya
## Subject: Create menu driven program which can do 4 actions
##	    addition, subtraction, multiplication, and division.
## Date: September 01, 2024
###################################

clear

echo "-------------------------------------------------"
echo "--------------Welcome to calculator--------------"
echo "-------------------------------------------------"

echo -e "[a] Addition\n[b] Subtraction\n[c] Multiplication\n[d] Division\n"
read -p "Enter your choice: " choice

case $choice in
	[aA])
		read -p "Enter first number: " num1
		read -p "Enter second number: " num2
		result=$((num1+num2))
		echo "The result for your choice is: $result"
		;;
	[bB])
		read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$((num1-num2))
                echo "The result for your choice is: $result"
                ;;

	[cC])
		read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$((num1*num2))
                echo "The result for your choice is: $result"
                ;;
	[dD])
		read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$((num1/num2))
                echo "The result for your choice is: $result"
                ;;
	*)
		echo "Wrong choice"
		;;	
esac

