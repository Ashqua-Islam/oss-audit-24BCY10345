#!/bin/bash
# Script 4: Log Analyzer

LOGFILE="/var/log/syslog"
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Log file not found"
    exit 1
fi

while read line
do
    if echo "$line" | grep -i "error" > /dev/null
    then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo "Total error lines in log file: $COUNT"
