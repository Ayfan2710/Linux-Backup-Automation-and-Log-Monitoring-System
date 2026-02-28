#!/bin/bash

SOURCE="/home"
DEST="$(pwd)/backups"
DATE=$(date +%F)

mkdir -p $DEST

tar -czf $DEST/home-backup-$DATE.tar.gz $SOURCE 2>/dev/null

echo "Backup completed on $DATE"
