FROM nextcloud:27-apache

# 필요한 경우 추가 설정 (예: PHP 모듈 설치)
RUN docker-php-ext-install pdo_mysql

# 예시: 커스텀 테마 또는 설정 복사
COPY custom-theme /var/www/html/themes/custom-theme

# 예시: crontab 설정
COPY cron/nextcloud-cron /etc/cron.d/nextcloud

# 권장 CMD는 기본값 유지

