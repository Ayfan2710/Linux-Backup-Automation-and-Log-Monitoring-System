# Linux Backup Automation and Log Monitoring System

## Overview
A production-style Linux automation project built on a RHEL-based system.  
This solution implements secure backup automation, log monitoring, remote synchronization, disk health checks, alert simulation, and LVM-backed storage.

---

## Key Features

### Backup Automation
- Compressed backups using tar
- Cron-based scheduling
- Logging and failure detection

### SSH Log Monitoring
- Detection of failed SSH login attempts
- Daily monitoring reports

### Remote Synchronization
- Rsync over SSH
- Key-based authentication
- Automated remote backup validation

### Disk Usage Monitoring
- Threshold-based disk checks
- Automated alert triggering

### Alert System
- Centralized alert logging
- Backup and disk failure notifications

### LVM Storage Integration
- Dedicated logical volume for backups
- Persistent mount configuration
- Scalable storage management

---

## Automation Schedule

| Time | Task |
|------|------|
| 02:00 AM | Local Backup |
| 02:30 AM | SSH Log Monitoring |
| 03:00 AM | Remote Sync |
| 03:30 AM | Disk Monitoring |

---

## Technologies Used
- Linux (RHEL-based)
- Bash
- Cron
- tar
- rsync
- SSH
- LVM

---

## Project Structure

Linux-Backup-Automation-and-Log-Monitoring-System/
│
├── scripts/
│   ├── local_backup.sh
│   ├── ssh_monitor.sh
│   ├── remote_backup.sh
│   ├── disk_monitor.sh
│   └── alert.sh
│
├── logs/        (ignored in git)
├── backups/     (ignored in git)
└── README.md
