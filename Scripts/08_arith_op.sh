#!/bin/bash

# Maths Operations
x=10
y=2

let mul=$x*$y
echo "X*Y = $mul"
echo "Multiplication: $(($x*$y))"

let sum=$x+$y
echo "X+Y = $sum"
echo "Addition: $(($x+$y))"

let sub=$x-$y
echo "X-Y = $sub"
echo "Subtraction: $(($x-$y))"

let div=$x/$y
echo "X/Y = $div"
echo "Division: $(($x/$y))"

# You can also use other operation same as above like
# ++, --, +=, -=, *=, /=, %=, **, %




