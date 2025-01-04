# Docker Practice - php-app

This repository contains exercises and examples for learning Docker. Here you may get an example about php-app in this branch where you may use PHP, Composer, MySQL, PHPMyAdmin, Redis, NodeJS, and Nginx server. You may work with Laravel, WordPress, and more.

## Prerequisites

- Docker installed on your machine
- Basic knowledge of command line interface

## Getting Started

1. Clone the repository:

   ```sh
   git clone https://github.com/abdulmajidcse/docker-practice.git
   cd docker-practice
   git checkout php-app
   ```

   Or directly clone this branch

   ```sh
   git clone --branch php-app https://github.com/abdulmajidcse/docker-practice.git
   cd docker-practice
   ```

2. Run this command to start your development server:
   ```sh
   docker-compose up -d
   ```

3. You may run this command when you need to rebuild container:
   ```sh
   docker-compose up -d --build
   ```

4. You may run php, node, npm, or composer command via exec or open your container from Docker.
    ```sh
    docker-compose exec <service_name> <command>
    ```
    For example:
    ```sh
    docker-compose exec app php artisan --version
    docker-compose exec app composer --version
    docker-compose exec app node --version
    docker-compose exec app npm --version
    ```

5. For starting your application, visit to http://localhost/ 

6. For phpmyadmin, visit to http://localhost:8080/ 

7. You may run this command to stop your container.
    ```sh
    docker-compose stop
    ```
    

## Acknowledgements

- [Docker Documentation](https://docs.docker.com/)
- [Docker Hub](https://hub.docker.com/)
