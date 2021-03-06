FROM php:7.1.5-fpm

RUN apt-get update \
    && apt-get install -y libmcrypt-dev mysql-client libmagickwand-dev libcurl4-gnutls-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo pdo_mysql mysqli curl json mbstring \
