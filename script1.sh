#!/bin/bash
# Script 1: System Identity Report

echo "===== SYSTEM REPORT ====="

echo "User: $(whoami)"
echo "Home Directory: $HOME"
echo "Kernel Version: $(uname -r)"
echo "System Uptime: $(uptime -p)"
echo "Current Date: $(date)"

echo "License Info: Linux is mostly distributed under GPL License"
