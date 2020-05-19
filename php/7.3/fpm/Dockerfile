FROM php:7.3-fpm-alpine3.11

WORKDIR /var/www

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN sed -i "s/;date.timezone =/date.timezone = Europe\/Moscow/g" "$PHP_INI_DIR/php.ini"
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

RUN apk add --no-cache --virtual curl

RUN install-php-extensions gd apcu ldap mysqli pdo_mysql
