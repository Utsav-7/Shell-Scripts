#!/bin/bash

# working with String

myString="Hello World!"

# Find the length of string
LENGTH=${#myString}
echo "Length: $LENGTH"

UPPERCASE=${myString^^}
echo "String in Uppercase: $UPPERCASE "

lowercase=${myString,,}
echo "String in lowercase: $lowercase"

Replace=${myString/World/Buddy}
echo "Word Replace: $Replace"

# 6:5 means take 5 character from index 6
Slice=${myString:6:5}
echo "Slice word: $Slice"




