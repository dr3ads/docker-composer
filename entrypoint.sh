#!/usr/bin/env bash

# Ensure /.composer exists and is writable
if [ ! -d /.composer ]; then
    mkdir /.composer
fi
chmod -R ugo+rw /.composer

# Run a command or supervisord
if [ $# -gt 0 ];then
    laravel new "$@"
    # Set permissions
    chmod -R 777 storage bootstrap/cache

    # Move .env file and generate app key
    php artisan key:generate
else
    echo "Laravel Project name is required"
fi