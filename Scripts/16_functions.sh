#!/bin/bash

# This script is about functions
<<comments
funtion is a block of code which perform some task and run when it is called
Can be reuse many times in our program which lesson our lines of code.
We can pass arguments to the method
comments

# function declaration without agruments
function myFun1 {
	echo "This is function example-1"
}

myFun2() {
	echo "This is function example-2"
}


# function call 
myFun1
myFun2

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

# function declaration with arguments
addition () {
	local num1=$1
	local num2=$2
	let sum=$num1+$num2
	echo "Sum of $num1 and $num2 is $sum"
}

# function call with arguments
addition 12 13
addition 30 42
addition 430 54




