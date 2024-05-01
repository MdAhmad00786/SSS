#!/bin/bash 

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

echo "number before getting swapped : $num1 $num2"

num1=$((num1 + num2))
num2=$((num1 - num2))
num1=$((num1 - num2))


echo "number after getting swapped : $num1 $num2"
