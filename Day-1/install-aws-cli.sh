#This is a script to download and install AWS-CLI on Linux/Ubuntu.

#!/bin/bash
set -e  # Exit immediately if a command fails

# Check if AWS CLI is already installed
if command -v aws &>/dev/null; then
    echo "AWS CLI is already installed. Version:"
    aws --version
    exit 0
fi

echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Installing unzip if not present..."
sudo apt update
sudo apt install -y unzip

echo "Extracting installer..."
unzip awscliv2.zip

echo "Installing AWS CLI..."
sudo ./aws/install

echo "Cleaning up..."
rm -rf aws awscliv2.zip

echo "AWS CLI installation complete!"
aws --version
