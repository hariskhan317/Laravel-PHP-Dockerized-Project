FROM composer:latest

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
 
USER laravel

WORKDIR /var/www/html

ENV COMPOSER_PROCESS_TIMEOUT=2000

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]