FROM php:8.2-cli
COPY . /var/www/html
WORKDIR /var/www/html
CMD ["php", "./index.php"]

# build the image
# docker build -t docker-practice .
# run the image
# docker run --rm docker-practice