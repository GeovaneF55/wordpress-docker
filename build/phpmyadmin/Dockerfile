FROM phpmyadmin/phpmyadmin:latest

# Move the directories you want into a temporary directory
RUN mv /var/www/html/themes /tmp/

# Modify the start up of this image to use a custom script
COPY ./custom-entrypoint.sh /custom-entrypoint.sh
RUN chmod +x /custom-entrypoint.sh
ENTRYPOINT ["/custom-entrypoint.sh"]
CMD ["apache2-foreground"]
