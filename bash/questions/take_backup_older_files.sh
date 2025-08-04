#!/bin/bash

# Set variables
SOURCE_DIR="/var/log"         # Where old files are
DEST_DIR="/backup"            # Where you want the backup archive
BACKUP_NAME="old-files-$(date +%F).tar.gz"

# Find and archive files older than 7 days

find "$SOURCE_DIR" -type f -mtime +7 | tar -czf "$DEST_DIR/$BACKUP_NAME" -T -

# Normally it's tar -czf backup.tar.gz -T filelist.txt
# above will read files from filelist.txt and compress them
# here - is stdin

echo "Backup completed: $DEST_DIR/$BACKUP_NAME"

# -c	Create a new archive
# -x	Extract files from an archive
# -z	Use gzip compression (.tar.gz file)
# -f	Use the file name provided next

