#!/bin/bash

#############################
## Author: Utsav Katharotiya
## Subject: Download any software from the internet
## Date: Sepetmber 02, 2024
#############################

URL="https://github.com/Kritika-git/Docker-Projects"

response=$(curl -s -w "%{http_code}" $URL)

http1_code=$(tail -n1 <<< "$reponse") 

content=$(sed '$ d' <<< "$response")

echo "$http1_code"
if [ $http1_code == 200 ];
then 
	echo "Request is working fine"
else
	echo "Send slack message that request is denied"
fi
