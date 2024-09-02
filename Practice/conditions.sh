#!/bin/bash

# ##################### If - Else 
<<comment
echo "Enter your age: "
read age

if [ "$age" -ge 18 ];
then
	echo "You are eligible to vote."
else
	echo "You are not eligible to vote."
fi
comment

# ##################### If - Elif 

echo "Enter your mark: "
read mark

if [ $mark -ge 90 ];
then
        echo "Your grade is A."
elif [ $mark -ge 80 ];
then
        echo "Your grade is B."
elif [ $mark -ge 70 ];
then 
	echo "Your grade is C."
else 
	echo "Your grade is D."
fi

