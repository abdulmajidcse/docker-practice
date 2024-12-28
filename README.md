# Docker Practice - php-env

This repository contains exercises and examples for learning Docker. Here you may get an example about PHP in this branch.

## Prerequisites

- Docker installed on your machine
- Basic knowledge of command line interface

## Getting Started

1. Clone the repository:
    ```sh
    git clone https://github.com/abdulmajidcse/docker-practice.git
    cd docker-practice
    git checkout php-env
    ```
    Or directly clone this branch
    ```sh
    git clone --branch php-env https://github.com/abdulmajidcse/docker-practice.git
    cd docker-practice
    ```

2. Build the Docker image:
    ```sh
    docker build -t docker-practice .
    ```

3. Run the Docker container:
    ```sh
    docker run --rm docker-practice
    ```

    You may run this command if you need mount from your local to container when your code will be updated.
    ```sh
    docker run -it --rm --name php-docker-practice -v "$(PWD):/var/www/html" -w /var/www/html docker-practice
    ```
    You may also run this command if you need to run a specific file.
    ```sh
    docker run -it --rm --name php-docker-practice -v "$(PWD):/var/www/html" -w /var/www/html docker-practice php test.php
    ```
    Note: You may run these above comands in your powershell if you get an error in your other terminal (e.g., Git Bash).

## Acknowledgements

- [Docker Documentation](https://docs.docker.com/)
- [Docker Hub](https://hub.docker.com/)
