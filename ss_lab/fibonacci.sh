#!/bin/bash

# Function to print Fibonacci series up to n terms
print_fibonacci() {
    n=$1
    a=0
    b=1
    
    echo "Fibonacci series up to $n terms:"
    echo -n "$a $b " # Print the first two terms
    
    for ((i=2; i<n; i++)); do
        c=$((a + b))
        echo -n "$c "
        a=$b
        b=$c
    done
    echo "" # Print a newline at the end
}

# Main script
read -p "Enter the number of terms: " num_terms
print_fibonacci $num_terms

