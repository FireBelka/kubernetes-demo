FROM phpmyadmin:latest
COPY  docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 777 /docker-entrypoint.sh
#RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
COPY azcopy /bin/
RUN azcopy https://storageaccfortest.blob.core.windows.net/backup-1?sp=r&st=2022-02-16T13:31:45Z&se=2022-03-16T21:31:45Z&spr=https&sv=2020-08-04&sr=c&sig=3Yw5uYWN2sS%2B%2ByPeTd2CHj4RVXjoP8bvKF3M%2Fzj3oq0%3D /etc/data.sql 

#COPY  data.sql /etc/data.sql 
