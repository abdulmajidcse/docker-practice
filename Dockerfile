FROM php:8.2-cli
COPY . /var/www/html
WORKDIR /var/www/html
CMD ["php", "./index.php"]

# build the image
# docker build -t docker-practice .
# run the image
# docker run --rm docker-practice
# run the image without building
# docker run -it --rm --name php-docker-practice -v "$(PWD):/var/www/html" -w /var/www/html docker-practice
# run a specific file
# docker run -it --rm --name php-docker-practice -v "$(PWD):/var/www/html" -w /var/www/html docker-practice php test.php