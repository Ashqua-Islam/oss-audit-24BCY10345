#!/bin/bash
# Script 3: Disk and Permission Auditor

echo "===== DIRECTORY CHECK ====="

DIRS=("/etc" "/var/log" "$HOME")

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        echo "Checking: $DIR"
        du -sh "$DIR" 2>/dev/null
        ls -ld "$DIR"
        echo "----------------------"
    else
        echo "$DIR does not exist"
    fi
done

CONFIG="$HOME/.config/libreoffice"

echo "Checking LibreOffice config folder..."

if [ -d "$CONFIG" ]; then
    echo "LibreOffice config folder found:"
    ls -ld "$CONFIG"
else
    echo "LibreOffice config folder not found."
    echo "Note: It will be created after running LibreOffice once."
fi
