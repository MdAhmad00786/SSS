#!/bin/bash

addition() {
    add=$(($1 + $2))
    echo "addition: $add"
}

subtraction() {
    sub=$(($1 - $2))
    echo "subtraction :$sub"
}

echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

addition $num1 $num2
subtraction $num1 $num2
