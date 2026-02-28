#!/bin/bash

PROJECT_DIR="/root/Linux-Backup-Automation-and-Log-Monitoring-System"
ALERT_LOG="$PROJECT_DIR/logs/alerts_$(date +%F).log"

mkdir -p "$PROJECT_DIR/logs"

MESSAGE=$1

echo "ALERT: $MESSAGE" >> "$ALERT_LOG"
echo "Alert triggered at $(date)" >> "$ALERT_LOG"
echo "------------------------------------" >> "$ALERT_LOG"

echo "ALERT SENT: $MESSAGE"
