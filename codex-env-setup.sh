#!/bin/bash
set -e
DOTNET_VERSION=8.0

echo "Installing .NET SDK $DOTNET_VERSION..."

# Install prerequisites
apt-get update
apt-get install -y wget apt-transport-https software-properties-common

echo "Add Microsoft package feed"
wget https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

echo "Install .NET SDK"
apt-get update
apt-get install -y dotnet-sdk-$DOTNET_VERSION

# Verify installation
dotnet --list-sdks
