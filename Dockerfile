FROM php:8.0-fpm

WORKDIR /var/www

RUN apt update \
    # composer
    # && curl -sS https://getcomposer.org/installer | php \
    # && mv composer.phar /usr/local/bin/composer \
    # && chmod +x /usr/local/bin/composer \
    # && composer self-update \
    && apt install -y \
    nano less zlib1g-dev g++ libicu-dev zip libzip-dev \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

USER 1000
