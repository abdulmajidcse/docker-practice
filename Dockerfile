FROM php:8.2-cli
COPY . /var/www/html
WORKDIR /var/www/html
CMD ["php", "./index.php"]