#!/usr/bin/env bash

echo "Update"
apk update
echo "Install npm"
apk add --no-cache npm
echo "Install js dependences"
npm install
echo "Build assets"
npm run build

echo "Running composer"
composer global require hirak/prestissimo
composer install --no-dev --working-dir=/var/www/html

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate --force
