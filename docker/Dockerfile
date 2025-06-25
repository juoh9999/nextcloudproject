FROM php:8.2-apache

# 필요한 PHP 확장 설치
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    libxml2-dev \
    libonig-dev \
    libicu-dev \
    libxslt1-dev \
    libbz2-dev \
    libgmp-dev \
    unzip \
    git \
    curl \
    && docker-php-ext-install -j$(nproc) \
       zip pdo pdo_mysql gd intl bz2 gmp xml xsl opcache \
    && docker-php-ext-enable opcache

# AWS SDK 설치 (S3 연동용)
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer require aws/aws-sdk-php

# Apache 설정
RUN a2enmod rewrite headers env dir mime

# 코드 복사 (src로 제한하거나 .dockerignore 사용 권장)
COPY . /var/www/html/

# 권한 설정 (옵션)
RUN chown -R www-data:www-data /var/www/html

