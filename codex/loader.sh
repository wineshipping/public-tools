#!/bin/bash
set -e
FILE=dotnet-setup.sh
echo "Fetching and executing $File..."
curl -fsSL https://raw.githubusercontent.com/wineshipping/public-tools/main/codex/$FILE -o /tmp/$FILE
chmod +x /tmp/$FILE
/tmp/$FILE