#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
DOTNET_VERSION=9.0

echo "Updating package lists..."
apt update

echo "Installing required dependencies..."
apt install -y software-properties-common

echo "Adding the Ubuntu .NET backports repository..."
add-apt-repository -y ppa:dotnet/backports

echo "Updating package lists after adding the .NET backports repository..."
apt update

echo "Installing .NET SDK $DOTNET_VERSION..."
apt install -y dotnet-sdk-$DOTNET_VERSION

echo "Verifying the .NET SDK installation..."
dotnet --version