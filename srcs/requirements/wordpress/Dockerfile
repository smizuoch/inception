FROM debian:bullseye

RUN ["/bin/bash", "-c", "apt update && apt install -y php-cgi libapache2-mod-fcgid php-fpm htop php-mysqli && mkdir run/php"]

COPY tools/test.php /var/www/html/test.php
COPY tools/fpm /etc/php/7.4/fpm/

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]
