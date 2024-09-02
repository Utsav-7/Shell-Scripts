#!/bin/bash

function Welcome() {
	echo "Hello, World!"
}

function Addition(){
	echo "Addition: $(($1+$2))"
}


# Function calling
Welcome
Addition 12 20
