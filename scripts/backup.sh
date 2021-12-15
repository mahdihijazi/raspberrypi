#!/bin/bash

DEST_FOLDER='/nas/pi_backups/'
NOW=$(date +%F_%R)
DEST_FILE="backup-$NOW.img.gz"
BACKUP_CMD="dd bs=4M if=/dev/mmcblk0 | gzip >"


echo "Backup SD Card Started..."

eval $BACKUP_CMD $DEST_FOLDER/$DEST_FILE

echo "Backup SD Card is Done"
