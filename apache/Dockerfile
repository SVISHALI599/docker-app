FROM php:7.4-apache
COPY srf/ /var/www/html/
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli
EXPOSE 8080


