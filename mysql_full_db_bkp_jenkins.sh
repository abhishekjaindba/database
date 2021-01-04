#!/bin/bash
HOST_IP=$1
PASSWORD=$2
echo "starting mysql database full backup"
mysqldump -h $HOST_IP --all-databases --single-transaction --quick --lock-tables=false > /opt/jenkins_scripts/mysql_backup/full_backup_$(date +%F_%N).sql -u root -p$PASSWORD
echo "Backup has been done"
