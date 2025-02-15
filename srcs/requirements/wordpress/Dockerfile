FROM debian:bullseye

RUN ["/bin/bash", "-c", "apt update && apt install -y php-cgi libapache2-mod-fcgid php-fpm htop php-mysqli && mkdir run/php"]

COPY tools/test.php run/php/test.php
COPY tools/fpm/pool.d /etc/php/7.4/fpm/pool.d/

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]
