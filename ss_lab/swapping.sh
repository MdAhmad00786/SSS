#!/bin/bash

# swapping two numbers using third variable

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

echo "number before swapping :$num1 $num2"

temp=$num1
num1=$num2
num2=$temp

echo "numbers after swapping a third variable:$num1 $num2"

