#!/bin/bash

LOG_FILE="/var/log/secure"
OUTPUT="logs/ssh_failed_$(date +%F).log"

mkdir -p logs

grep "Failed password" $LOG_FILE > $OUTPUT

COUNT=$(wc -l < $OUTPUT)

echo "Total failed SSH attempts: $COUNT"
