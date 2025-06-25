FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-configure zip --with-libzip \
    && docker-php-ext-install -j$(nproc) zip pdo pdo_mysql gd

# Nextcloud 다운로드 및 설치
RUN curl -o nextcloud.zip https://download.nextcloud.com/server/releases/latest.zip && \
    unzip nextcloud.zip && \
    mv nextcloud/* /var/www/html/ && \
    rm -rf nextcloud.zip nextcloud

# 권한 설정
RUN chown -R www-data:www-data /var/www/html

