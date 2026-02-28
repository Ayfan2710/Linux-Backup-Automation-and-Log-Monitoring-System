#!/bin/bash

PROJECT_DIR="/root/Linux-Backup-Automation-and-Log-Monitoring-System"
SOURCE="/home"
DEST="/backup_storage"
LOGFILE="$PROJECT_DIR/logs/local_backup_$(date +%F).log"
DATE=$(date +%F)

mkdir -p "$DEST"
mkdir -p "$PROJECT_DIR/logs"

echo "Backup started at $(date)" > "$LOGFILE"

tar -czf "$DEST/home-backup-$DATE.tar.gz" "$SOURCE" >> "$LOGFILE" 2>&1

if [ $? -eq 0 ]; then
    echo "Backup completed successfully at $(date)" >> "$LOGFILE"
else
    echo "Backup FAILED at $(date)" >> "$LOGFILE"
    "$PROJECT_DIR/scripts/alert.sh" "Local backup failed on $(date)"
fi
