#!/bin/bash

# Project: Backup and Disk Usage Monitor
# Author: [Your Name]
# Date: [Today's Date]
# Description: This script creates a backup of a specified directory and checks the disk usage of the system.
# It will notify the user if disk usage exceeds a threshold.

# ================================
# Constants and Configurations
# ================================
BACKUP_SOURCE="/path/to/source/directory"   # Directory to backup
BACKUP_DEST="/path/to/backup/directory"     # Destination for backup
LOG_FILE="/path/to/logfile.log"             # Log file for recording events
DISK_THRESHOLD=80                           # Disk usage percentage threshold (alerts if exceeded)

# ================================
# Function: Log message to file
# ================================
log_message() {
    local message="$1"  # First argument is the log message
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $message" >> "$LOG_FILE"
}

# ================================
# Function: Backup files
# ================================
backup_files() {
    log_message "Starting backup process..."

    # Create backup destination if it doesn't exist
    if [ ! -d "$BACKUP_DEST" ]; then
        log_message "Creating backup directory: $BACKUP_DEST"
        mkdir -p "$BACKUP_DEST"
    fi

    # Perform the backup using rsync (more efficient than cp)
    rsync -av --delete "$BACKUP_SOURCE" "$BACKUP_DEST"
    
    if [ $? -eq 0 ]; then
        log_message "Backup completed successfully."
    else
        log_message "Error during backup."
    fi
}

# ================================
# Function: Check disk usage
# ================================
check_disk_usage() {
    log_message "Checking disk usage..."
    
    # Get disk usage percentage of the root partition (/)
    local usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
    
    log_message "Current disk usage is $usage%."
    
    # Compare current usage with threshold
    if [ "$usage" -gt "$DISK_THRESHOLD" ]; then
        log_message "WARNING: Disk usage exceeded $DISK_THRESHOLD%. Current usage is $usage%."
        echo "Warning: Disk usage is high: $usage%"
    else
        log_message "Disk usage is within acceptable limits."
    fi
}

# ================================
# Main Script Execution
# ================================

log_message "Script started."

# Run backup
backup_files

# Check disk usage
check_disk_usage

log_message "Script completed."

# ================================
# End of Script
# ================================
