#!/bin/bash

echo "Enter name of State: "
read state

case $state in 
	"Gujarat")
 		echo "Ghandhinagar is Capital of Gujarat"
		;;	

	"Maharastra")
		echo "Mumbai is Capital of Maharastra"
		;;
	"UP")
		echo "Lacknow is Capital of Utter Pradesh"
		;;
	"Panjab | Haryana")
		echo "Chandigarh is Capital of Panjab/Haryana"
		;;
	"MP")
		echo "Bhopal is Capital of Madhya Pradesh"
		;;
	*)
		echo "You  discovered an unknown state"
		;;
esac
