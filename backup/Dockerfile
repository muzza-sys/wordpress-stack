FROM alpine:latest

RUN apk add --no-cache bash mariadb-client tar gzip curl python3 py3-pip \
    && pip3 install awscli \
    && mkdir /backups

COPY backup.sh /backup.sh

RUN chmod +x /backup.sh

CMD ["sh", "-c", "echo '0 * * * * /backup.sh' | crontab - && crond -f -L /var/log/cron.log"]
