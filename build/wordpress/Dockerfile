# GET WORDPRESS LATEST IMAGE
FROM wordpress:latest

# INSTALL PHP EXTENSIONS
RUN docker-php-ext-install mysqli pdo pdo_mysql

# ENABLE PHP EXTENSIONS
RUN docker-php-ext-enable mysqli pdo pdo_mysql
