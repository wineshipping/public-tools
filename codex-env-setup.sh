#!/bin/bash
set -e

echo "SETUP .NET ENVIRONMENT"
echo "NOTE: Make sure to set the DOTNET_VERSION in the environment variables"

echo "1. Install prerequisites"

apt-get update
apt-get install -y wget apt-transport-https software-properties-common

echo "2. Add Microsoft package feed..."
wget https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

echo "3. Installing .NET SDK $DOTNET_VERSION..."
apt-get update
apt-get install -y dotnet-sdk-$DOTNET_VERSION

# Verify installation
echo "4. Verify Instalation"
dotnet --list-sdks