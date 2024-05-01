#!/bin/bash

# Function to check if a number is palindrome
is_palindrome() {
    num=$1
    reverse_num=$(echo $num | rev)
    
    if [ $num -eq $reverse_num ]; then
        echo "$num is a palindrome."
    else
        echo "$num is not a palindrome."
    fi
}

# Main script
read -p "Enter a number: " number
is_palindrome $number


