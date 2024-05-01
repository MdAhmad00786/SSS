#!/bin/bash

# Check if filename is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Store the filename provided as an argument
filename=$1

# Check if the file exists
if [ ! -e "$filename" ]; then
    echo "File '$filename' does not exist."
    exit 1
fi

# Use stat command to find the inode number of the file
inode=$(stat -c "%i" "$filename")

echo "Inode number of '$filename' is: $inode"

