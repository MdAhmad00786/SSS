#!/bin/bash

# Variables
vms=("ubuntu2" "centos")

# Loop over VMs
for vm in "${vms[@]}"; do
    # Determine OS and install web server
    ssh -o StrictHostKeyChecking=no "$vm" '
        if grep -q "Ubuntu" /etc/os-release; then
            sudo apt update
            sudo apt install -y apache2
            echo "Apache 2 installed successfully on Ubuntu."
        elif grep -q "CentOS" /etc/os-release; then
            sudo yum check-update
            sudo yum install -y httpd
            echo "httpd (Apache) installed successfully on CentOS."
        else
            echo "Error: Unsupported OS."
            exit 1
        fi
    '
done
