#!/bin/bash

# > is used for override previous content
# >> is append the content in file 

ping -c 1 www.google.com > redirect.log

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" >> redirect.log

date >> redirect.log


<< comments
In case if you don't wanna print the output of a command on terminal or write in a file 

we can redirect the output to 
/dev/null using &> /dev/null 
it is used to show only necessery functionality

ex., # cd /root	&> /dev/null


${0} --> is used to print the file name in script


comments
