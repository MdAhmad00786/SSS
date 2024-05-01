#!/bin/bash

# Function to calculate factorial recursively
factorial() {
    if [ $1 -eq 0 ]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
    fi
}

# Main script
read -p "Enter a number: " number
result=$(factorial $number)
echo "Factorial of $number is: $result"
