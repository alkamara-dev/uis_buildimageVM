#!/bin/bash

# Update the system
sudo yum update -y

# Install Git
sudo yum install git -y

# Check if Git is installed
if [ $? -eq 0 ]; then
    echo "Git installed successfully."
else
    echo "Git installation failed."
    exit 1
fi

# Configure Git user details
git config --global user.name "Alex Kamara"
git config --global user.email "ak@felexuss.com"

# Verify installation
git --version