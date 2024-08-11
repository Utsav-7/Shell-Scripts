#!/bin/bash 

# loops in shell Script

for  i in 1 2 3 4 5 6 7 8 9 10
do 
	echo "Number is $i"
done

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="


# you can also use for i in {1..10}
for  i in {1..10}
do 
	echo "Num is $i"
done

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

for name in raju shyam baburao 
do 
	echo "name is $name"
done

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

# WHILE loops

count=0
num=10
while [ $count -le $num ]
do 
	echo "Number are $count"
	let count++
done 

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

# until loop is just opposite of while : loop not end until the condition not true 

a=10

until [ $a -eq 1 ]
do
        echo $a
        let a--
done

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

# infinite loop using while

while true
do 
	echo "Hi, Buddy"
	sleep 2s
done
  

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

# infinite loop using for loop

for (( ;;))
do
        echo "Hi, Buddy"
        sleep 2s
done


