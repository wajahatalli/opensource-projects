#!/bin/bash

# === CONFIGURE THESE ===
BACKUP_DIR="/opt/mattermost-backup"
DATE=$(date +"%Y-%m-%d")
KEEP_DAYS=7

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Function to backup a volume
backup_volume() {
    VOLUME_NAME=$1
    BACKUP_FILE="$BACKUP_DIR/${VOLUME_NAME}_${DATE}.tar.gz"

    echo "Backing up volume: $VOLUME_NAME -> $BACKUP_FILE"
    docker run --rm \
        -v ${VOLUME_NAME}:/volume \
        -v $BACKUP_DIR:/backup \
        alpine tar czf /backup/$(basename $BACKUP_FILE) -C /volume .
}

# List of volumes to back up (adjust if you add/remove volumes)
VOLUMES=(
    "mattermost_db-data"
    "mattermost_mattermost-data"
    "mattermost_mattermost-config"
    "mattermost_mattermost-plugins"
    "mattermost_mattermost-client-plugins"
    "mattermost_mattermost-bleve-indexes"
    "mattermost_mattermost-logs"
)

echo "Starting Mattermost Backup: $(date)"

# Backup each volume
for VOLUME in "${VOLUMES[@]}"; do
    backup_volume $VOLUME
done

echo "Backup completed successfully!"

# === Clean up old backups ===
echo "Removing backups older than $KEEP_DAYS days..."
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +$KEEP_DAYS -exec rm {} \;

echo "Old backups removed. Backup process finished."