#!/bin/bash

# Conditions 
read -p "Enter your age: " age

# ---------------- if-else ------------------------
<<comments
option for conditions
	-gt : greater than
	-lt : less than
	-ne / != : not equal
	-ge : greater than or equal to
	-le : less than or equal to 
	-eq / == : equal 

comments

if [ $age -gt 18 ] 
then
	echo "You are eligible for vote :)" 
else 
	echo "You are not eligible for vote :("
fi

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

# --------------- if-elif-else ------------------------

read -p "Enter your marks: " marks

if [ $marks -ge 80 ]
then
        echo "Your grade is A." 
elif [ $marks -ge 70 ]
then
        echo "Your grade is B." 
elif [ $marks -ge 60 ]
then 
	echo "Your grade is C."
else
	# nested if condition
        if [ $marks -gt 45 ] 
	then 
		echo "Your grade is D."
	else
		echo "Your are FAIL !!!!!!"
	fi
fi

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

# --------------------- Case -------------------

echo "a : for print date"
echo "b : list of scripts"
echo "c : check current locations" 

read -p "Enter your choice: " choice

case $choice in 
	a) 
		echo "Today is " 
		date
		;;
	b) ls;; 
	c) pwd;;
	*) echo "Invalid Input !!!!";;
esac


