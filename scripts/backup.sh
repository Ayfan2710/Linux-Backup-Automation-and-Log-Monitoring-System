#!/bin/bash

SOURCE="/home"
DEST="/root/Linux-Backup-Automation-and-Log-Monitoring-System/backups"
DATE=$(date +%F)

mkdir -p $DEST

tar -czf $DEST/backup-$DATE.tar.gz $SOURCE 2>/dev/null

echo "Backup completed on $DATE"
