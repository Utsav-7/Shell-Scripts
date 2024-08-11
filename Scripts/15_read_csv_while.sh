#!/bin/bash

# IFS - Internal Field Seperator
while IFS="," read id name age
do 
	echo "| $id | $name | $age |"
	#echo $name
	#echo $age
done < details.csv

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

# below command not read first row because it is column name not value
cat details.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do 
	echo "| $id | $name | $age |"
done


