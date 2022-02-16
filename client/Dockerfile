FROM phpmyadmin:latest
COPY  docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 777 /docker-entrypoint.sh
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
COPY azcopy /bin/
COPY  data.sql /etc/data.sql 
