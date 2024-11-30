#!/bin/bash

# Prompt the user for a directory name
echo "Enter Directory name: "
read Directory 

# Check if the directory exists
if [ -d "$Directory" ]; then
    echo "Directory Exists"
else
    echo "Directory Doesn't Exist!"
fi

# Check if /usr/share/nmap exists
if [ -d "/usr/share/nmap" ]; then
    echo "/usr/share/nmap exists"
else
    echo "/usr/share/nmap doesn't exist"
fi