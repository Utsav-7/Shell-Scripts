#!/bin/bash

# this script for use of variable 
a=10
name="utsav"
age=21

myName=$name

echo "MY NAME IS $myName AND MY AGE IS $age "

# you can also update value of the variable within the script
myName=Utsav
echo "MY UPDATED NAME IS $myName " 


# Var to store the output of a command
HOSTNAME=$(hostname)
echo "The name of machine is $HOSTNAME"

# constant variable
readonly college="DEPSTAR"
echo "My college name is $college"

# below line will give an error bcz its change the value of readonly variable
#college="CSPIT"


