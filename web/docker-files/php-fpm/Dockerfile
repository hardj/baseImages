FROM php:7.3-fpm

WORKDIR /var/www
RUN apt-get update && apt-get install -y libpq-dev && apt-get install -y \
        libicu-dev \
        zlib1g-dev \
        libzip-dev \
    && docker-php-ext-install \
        intl \
        zip \
        opcache \
    && docker-php-ext-enable \
        intl \
        zip \
        opcache
RUN /usr/local/bin/pecl install xdebug && docker-php-ext-enable xdebug
RUN apt-get install -y libpq-dev
RUN docker-php-ext-install pdo_pgsql

COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY php.ini /usr/local/etc/php/php.ini

COPY docker-php-entrypoint /usr/local/bin/docker-php-entrypoint
RUN chmod +x /usr/local/bin/docker-php-entrypoint

RUN echo "date.timezone = Europe/Moscow" >> /usr/local/etc/php/conf.d/timezone.ini
RUN rmdir /var/www/html
