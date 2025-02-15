FROM debian:bullseye

RUN ["/bin/bash", "-c", "apt update && apt install -y php-cgi libapache2-mod-fcgid php-fpm htop php-mysqli && mkdir run/php"]

COPY tools/test.php /var/www/html/
COPY tools/wordpress /var/www/wordpress/
COPY tools/www.conf /etc/php/7.4/fpm/pool.d/www.conf

EXPOSE 9000

# test.phpを実行するためのコマンドを指定
CMD ["php-fpm7.4", "-F"]
