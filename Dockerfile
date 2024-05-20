# GET WORDPRESS SPECIFIC VERSION
FROM wordpress:latest
# FROM wordpress:6.5.3

# GET WORDPRESS SPECIFIC PHP VERSION
# FROM wordpress:php8.3
# FROM wordpress:6.5.3-php8.3

# GET WORDPRESS USING APACHE OR FPM
# FROM wordpress:6.5-apache
# FROM wordpress:6-php8.2-fpm

# INSTALL PHP EXTENSIONS
RUN docker-php-ext-install mysqli pdo pdo_mysql

# ENABLE PHP EXTENSIONS
RUN docker-php-ext-enable mysqli pdo pdo_mysql
