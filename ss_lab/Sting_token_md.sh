#!/bin/bash

tokenize_string() {
    local delimiter="$1"
    local string="$2"

    if [ "$delimiter" = " " ]; then

        read -ra tokens <<< "$string"
    else

        IFS="$delimiter" read -ra tokens <<< "$string"
    fi

    for token in "${tokens[@]}"; do
        echo "$token"
    done
}


read -p "Enter the string to tokenize: " input_string

read -p "Enter the delimiter (For space type " " or any other character): " delimiter

tokenize_string "$delimiter" "$input_string"

