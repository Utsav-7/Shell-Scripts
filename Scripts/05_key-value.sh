#!/bin/bash

# How to add key-value pairs in array

declare -A myArray
myArray=( [name]=utsav [age]=21 [city]=surat)

# access array using key 
echo "Value of name: ${myArray[name]}"
echo "Value of age: ${myArray[age]}"
echo "Value of city: ${myArray[city]}"



