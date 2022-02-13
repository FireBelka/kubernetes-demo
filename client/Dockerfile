FROM phpmyadmin:latest
COPY  docker-entrypoint.sh /docker-entrypoint.sh
COPY config.inc.php /etc/phpmyadmin/config.inc.php
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["php-fpm"]
#ENTRYPOINT [ "/docker-entrypoint.sh" ]

#FROM phpmyadmin:latest

