#!/bin/bash

# Function to find the largest number among two
find_largest() {
    if [ $1 -gt $2 ]; then
        echo "$1 is the largest."
    elif [ $2 -gt $1 ]; then
        echo "$2 is the largest."
    else
        echo "Both numbers are equal."
    fi
}

# Main script starts here
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

find_largest $num1 $num2


