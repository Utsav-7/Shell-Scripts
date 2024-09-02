#!/bin/bash 

#################################
## Auther: Utsav Katharotiya
## Subject: Find the first 10 biggest
##          file in the file system &
##          write the output to a file
## Date: August 30, 2024
#################################

echo "This program get first 10 biggest file in the file system passed via positional argument."
PATH="$1"
echo $PATH
du -ah $PATH | sort -hr | head -n 5 > /tmp/filesize.txt
echo "This is the list of big files in the file system $PATH"
cat /tmp/filesize.txt
