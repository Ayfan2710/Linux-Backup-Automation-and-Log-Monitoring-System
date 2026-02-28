#!/bin/bash

THRESHOLD=80
LOGFILE="/root/Linux-Backup-Automation-and-Log-Monitoring-System/logs/disk_monitor_$(date +%F).log"

mkdir -p logs

echo "Disk Usage Report - $(date)" > $LOGFILE
echo "---------------------------------" >> $LOGFILE

df -h | grep '^/dev/' | while read line
do
    USAGE=$(echo $line | awk '{print $5}' | sed 's/%//g')
    PARTITION=$(echo $line | awk '{print $6}')

    if [ $USAGE -ge $THRESHOLD ]; then
        echo "WARNING: $PARTITION is at ${USAGE}% usage" >> $LOGFILE
    else
        echo "$PARTITION usage is ${USAGE}% - OK" >> $LOGFILE
    fi
done
