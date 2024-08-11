#!/bin/bash

# logical operator like &&, ||, !

read -p "Enter your marks: " marks

if [ "$marks" -le 100 ] && [ "$marks" -ge 80 ]; 
then
    echo "Your grade is A."
elif [ "$marks" -lt 80 ] && [ "$marks" -ge 70 ]; 
then
    echo "Your grade is B."
elif [ "$marks" -lt 70 ] && [ "$marks" -ge 60 ]; 
then
    echo "Your grade is C."
else
    echo "Your grade is D."
fi

echo "=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-"


bool=true

# Use ! to negate the condition
if [ "$bool" != "false" ]; then
    echo "this is !false = true"
else
    echo "this is !true = false"
fi


