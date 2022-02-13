FROM phpmyadmin:latest
COPY  docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 777 /docker-entrypoint.sh
COPY  data.sql /etc/data.sql 
