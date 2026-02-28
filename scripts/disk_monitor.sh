#!/bin/bash

PROJECT_DIR="/root/Linux-Backup-Automation-and-Log-Monitoring-System"
THRESHOLD=80
LOGFILE="$PROJECT_DIR/logs/disk_monitor_$(date +%F).log"

mkdir -p "$PROJECT_DIR/logs"

echo "Disk Usage Report - $(date)" > "$LOGFILE"
echo "---------------------------------" >> "$LOGFILE"

df -h | grep '^/dev/' | while read line
do
    USAGE=$(echo $line | awk '{print $5}' | sed 's/%//g')
    PARTITION=$(echo $line | awk '{print $6}')

    if [ "$USAGE" -ge "$THRESHOLD" ]; then
        echo "WARNING: $PARTITION is at ${USAGE}% usage" >> "$LOGFILE"
        "$PROJECT_DIR/scripts/alert.sh" "$PARTITION exceeded ${USAGE}% disk usage"
    else
        echo "$PARTITION usage is ${USAGE}% - OK" >> "$LOGFILE"
    fi
done
