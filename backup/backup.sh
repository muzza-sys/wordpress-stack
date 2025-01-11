#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="/backups/${TIMESTAMP}"

mkdir -p ${BACKUP_DIR}

# Backup WordPress files
tar -czf ${BACKUP_DIR}/wordpress_files.tar.gz -C /var/www/html .

# Backup MySQL database
mysqldump -h db -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} > ${BACKUP_DIR}/database.sql

# Upload to S3
aws s3 cp ${BACKUP_DIR}/wordpress_files.tar.gz s3://${AWS_BUCKET_NAME}/backups/${TIMESTAMP}/wordpress_files.tar.gz --region ${AWS_REGION}
aws s3 cp ${BACKUP_DIR}/database.sql s3://${AWS_BUCKET_NAME}/backups/${TIMESTAMP}/database.sql --region ${AWS_REGION}

echo "✅ Backup completed and uploaded to S3."
