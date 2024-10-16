FROM php:8.0-apache

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libonig-dev \
    libzip-dev \
    && docker-php-ext-install pdo pdo_mysql mbstring zip \
    && a2enmod rewrite

RUN git clone https://github.com/foss-android/toolbox.git .

RUN sed -i 's|/var/www/html|/var/www/html/public|g' /etc/apache2/sites-available/000-default.conf

RUN sed -i '/<\/VirtualHost>/i RewriteEngine On\nRewriteRule ^/admin(.*)$ https://linux.do/u/f-droid [R=301,L]' /etc/apache2/sites-available/000-default.conf

RUN sed -i 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf
RUN sed -i 's/<VirtualHost \*:80>/<VirtualHost \*:8080>/' /etc/apache2/sites-available/000-default.conf

RUN chmod -R 777 /var/www/html

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

CMD ["apache2-foreground"]
