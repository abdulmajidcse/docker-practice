# Use a base image that supports all three (Debian-based image)
FROM debian:bullseye-slim

# Install dependencies and add repositories
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    lsb-release \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install PHP 8.2 from the Ondrej PHP repository
RUN curl -sSL https://packages.sury.org/php/README.txt | bash - && \
    apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-fpm php8.2-mbstring

# Install Node.js 22.x from NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs

# Install Python 3
RUN apt-get update && apt-get install -y python3 python3-pip

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .


# build the image
# docker build -t multilang-docker-practice .
# run the image
# docker run --rm multilang-docker-practice
# run the image without building
# docker run -it --rm --name multilang-docker-practice -v "$(PWD):/app" -w /app multilang-docker-practice
# run a specific file
# docker run -it --rm --name multilang-docker-practice -v "$(PWD):/app" -w /app multilang-docker-practice php test.php

# docker run -it --rm --name multilang-docker-practice -v "$(PWD):/app" -w /app multilang-docker-practice node test.js

# docker run -it --rm --name multilang-docker-practice -v "$(PWD):/app" -w /app multilang-docker-practice python3 test.py
