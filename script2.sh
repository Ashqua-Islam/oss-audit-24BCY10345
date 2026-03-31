#!/bin/bash
# Script 2: Package Inspector

PACKAGE="libreoffice"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed"
    libreoffice --version
else
    echo "$PACKAGE is NOT installed"
fi

echo "LibreOffice is a free and open-source office suite."
