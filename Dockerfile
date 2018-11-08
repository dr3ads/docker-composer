FROM composer/composer:latest

# Create new laravel project
RUN composer global require "laravel/installer"
RUN chmod +x /composer/vendor/laravel/installer/laravel
RUN ln -s /composer/vendor/bin/* /usr/local/bin/

CMD "echo laravel installer ready to use"
