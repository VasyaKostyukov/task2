#!/bin/bash
backup_files="/var/log /etc/ssh /etc/xrdp /etc/vsftpd.conf"

dest="/archive"

day=$(date +%d-%B-%Y)

hostname=$(hostname -s)

archive_file="$hostname-$day.tar"

echo "Backing up $backup_files to $dest/$archive_file"
date
echo

sudo tar cpf $dest/$archive_file $backup_files

echo
echo "Backup finished"
date

ls -lh $dest

