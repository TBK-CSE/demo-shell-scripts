#!/bin/bash

<<help
This shell script will take periodic backups

Eg : ./backup.sh <source> <destination>
src /home/ubuntu/scripts
dest /home/ubuntu/backups
help


src=$1
dest=$2

timestamp=$(date +%Y-%m-%d-%H-%M)
echo "Today's date is : $timestamp"

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "Backup for Date : $timestamp is done"

aws s3 sync "$dest" s3://tws-backups-devops
 
echo "Backup completed & uploaded in S3"

