#!/bin/bash

SOURCE="/root/Linux-Backup-Automation-and-Log-Monitoring-System/backups/"
DEST="root@localhost:/remote_backups"
LOGFILE="/root/Linux-Backup-Automation-and-Log-Monitoring-System/logs/remote_backup_$(date +%F).log"

mkdir -p logs

echo "Remote backup started at $(date)" > $LOGFILE

rsync -avz --delete $SOURCE $DEST >> $LOGFILE 2>&1

if [ $? -eq 0 ]; then
    echo "Remote backup completed successfully at $(date)" >> $LOGFILE
else
    echo "Remote backup FAILED at $(date)" >> $LOGFILE
fi
