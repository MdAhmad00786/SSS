#!/bin/bash

sum=0

# Main script
read -p "Enter the number of elements: " n

echo "Enter $n numbers:"
# Loop to read 'n' numbers and calculate their sum
for ((i=1; i<=n; i++)); do
    read number
    sum=$((sum + number))
done

echo "Sum of the numbers is: $sum"


