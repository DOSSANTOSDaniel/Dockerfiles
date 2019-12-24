FROM php:7.3-apache
USER root
RUN apt update && apt upgrade -y
COPY dokuwiki /var/www/html/
RUN chown -R www-data:www-data /var/www/html/
WORKDIR /var/www/html/
RUN ln -s /var/www/html/data /var/www/html/doki_DATA
EXPOSE 80
CMD echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
VOLUME /var/www/html/doki_DATA
