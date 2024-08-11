#!/bin/bash

# Arrays
myArray=(1 2 3.43 2334 utsav "UTSAV" C)

# Access the value of an array
# access all the value of an array
echo "All the values in array:-  ${myArray[*]}"

# access particular value of an array
echo "Value at 5th index is ${myArray[5]}"
echo "Value at 2nd index is ${myArray[2]}"

# How to get length of array
echo "The length of array is ${#myArray[*]}"

# How to get specific values
echo "Values from 1 to end: ${myArray[*]:1}"

# 1:2 means starting from 1 and take 2 values
echo "2 Values from index 1: ${myArray[*]:1:2}"

# add more values in array
myArray+=(New 210 54)

echo "Updated array : ${myArray[*]}"


