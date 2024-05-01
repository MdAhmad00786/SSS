#!/bin/bash

# Define the factorial function
factorial() {
    if [ $1 -eq 0 ]; then
        echo 1   # Base case: factorial of 0 is 1
    else
        prev=$(factorial $(( $1 - 1 )))  # Recursive call
        echo $(( $1 * $prev ))            # Multiply current number with factorial of previous number
    fi
}

# Take user input for the number whose factorial needs to be calculated
read -p "Enter a number to calculate its factorial: " num

# Call the factorial function with user input
result=$(factorial $num)

echo "Factorial of $num is: $result"
