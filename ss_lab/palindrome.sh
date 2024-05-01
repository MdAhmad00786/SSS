#!/bin/bash

echo "Enter a number: "
read num

# Store the original number
original=$num

# Reverse the number
reverse=0

while [ $num -gt 0 ]
do
    remainder=$(( $num % 10 ))
    reverse=$(( $reverse * 10 + $remainder ))
    num=$(( $num / 10 ))
done

# Check if the original number is equal to its reverse
if [ $original -eq $reverse ]
then
    echo "$original is a palindrome."
else
    echo "$original is not a palindrome."
fi
