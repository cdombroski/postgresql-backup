FROM postgres:14-alpine
ENV DB_HOST=postgres DB_USER=postgres DB_PASS=postgres
RUN mkdir -p /var/backups/postgres
VOLUME [ "/var/backups/postgres" ]
ADD autopgsqlbackup.sh /
CMD /autopgsqlbackup.sh
