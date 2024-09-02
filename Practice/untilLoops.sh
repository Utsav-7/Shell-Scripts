#!/bin/bash 

<<comment 
It is similar to while loop. The only difference is that until statement executes its code block while its conditional expression is false, and while statement executes its code block while its conditional expression is true.
comment

# ##################### Varient - 1

<<comment
i=10

until [ $i -gt 100 ];
do 
	echo "Number... $i"
	i=$((i + 10))
	sleep 1;
done

comment

# ##################### Infinite Loop

until false;
do 
	echo "Infinite Loop"
	sleep 1
done
