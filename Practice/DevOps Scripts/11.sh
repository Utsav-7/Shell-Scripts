#!/bin/bash

##############################
## Author: Utsav Katharotiya
## Subject: To check errors in error logs
## Date: September 01, 2024
##############################

## grep <options> pattern <file name>
## -c	      --> This prints only a count of the lines that match a pattern. 
## -h	      --> Display the matched lines, but do not display the file names.
## -i	      --> Ignore, case for matching.
## -l         --> Display list of a filesnames only.
## -n 	      --> Display matched lines and their line number.
## -v	      --> This prints out all the lines that do not matches the pattern.
## -e exp     --> Specifies expression with this option. Can use multiple times.
## -f file    --> Take patterns from file, one per line.
## -E	      --> Threats pattern as an extended regular expressions (ERE). 
## -w	      --> Match the whole word
## -o	      --> Print only the matched parts of matching line, with each such part on a separate output line
## -A n	      --> Prints serched line and n lines after the result. 
## -B n	      --> Prints serched line and n lines before the result.
## -C n       --> Prints searched line and n lines after before the result.


error_file=`cat /var/log/messages`
matched_error=`grep -i error /var/log/messages`
echo $matched_error

if [[ $? -eq 0 ]];
then 
	echo "found error in OS logs: $matched_error"
else
	echo "no error in message logs"
fi
