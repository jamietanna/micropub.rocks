FROM php:7-fpm

RUN apt update && apt install -y libcurl4-openssl-dev libzip-dev && docker-php-ext-install pdo pdo_mysql zip curl
RUN docker-php-ext-enable pdo pdo_mysql zip curl
