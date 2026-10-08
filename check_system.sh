#!/bin/bash

# Define output log file
LOG_FILE="system_status.log"

echo "=== LINUX SYSTEM HEALTH CHECK ==="
echo "Date: $(date)"

# 1. Check system uptime (how long the Linux machine has been running)
echo -e "\n--- System Uptime ---"
uptime

# 2. Check available disk space
echo -e "\n--- Disk Space Usage ---"
df -h /

# 3. Save a log entry to system_status.log
echo "[$(date)] System check completed successfully." >> $LOG_FILE

echo -e "\nStatus logged to $LOG_FILE"