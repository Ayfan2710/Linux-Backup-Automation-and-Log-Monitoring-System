# Linux Backup Automation and Log Monitoring System

## Overview
This project implements an automated Linux backup and monitoring solution using Bash scripting, cron scheduling, and rsync over SSH. The system ensures secure data backups, log monitoring, and remote synchronization with restore validation.

---

## Project Architecture

1. Local Backup System
   - Uses tar for compressed backups.
   - Stores backups in local backup directory.
   - Logs backup operations with timestamps.

2. SSH Log Monitoring
   - Parses /var/log/secure.
   - Detects failed SSH login attempts.
   - Generates daily monitoring reports.

3. Remote Synchronization
   - Uses rsync over SSH.
   - Implements SSH key-based authentication.
   - Syncs backups to remote storage directory.
   - Includes error handling and logging.

4. Automation
   - Cron-based scheduling.
   - Separate scheduling for backup, monitoring, and sync.

---

## Automation Schedule

| Time     | Task                     |
|----------|--------------------------|
| 02:00 AM | Local Backup             |
| 02:30 AM | SSH Log Monitoring       |
| 03:00 AM | Remote Rsync Sync        |

---

## Security Features
- SSH key-based authentication
- Restricted remote synchronization
- Controlled file permissions
- Secure log monitoring

---

## Restore Validation
Backups are tested by extracting archive files into a temporary restore directory to validate integrity.

---

## Technologies Used
- Bash
- Cron
- tar
- rsync
- SSH
- Linux (RHEL-based system)

---

## Future Enhancements
- Disk usage monitoring
- Email alert simulation
- LVM-backed storage
- Failure notification system
