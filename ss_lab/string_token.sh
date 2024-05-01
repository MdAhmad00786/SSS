#!/bin/bash

# Main script
read -p "Enter a string: " input_string
read -p "Enter the delimiter: " delimiter

# Tokenize the string using the specified delimiter
tokens=$(echo "$input_string" | tr "$delimiter" "\n")

# Print each token
echo "$tokens"
