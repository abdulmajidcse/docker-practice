# Docker Practice - multi-lang-with-debian

This repository contains exercises and examples for learning Docker. Here you may get an example about PHP, Python, and NodeJS in this branch.

## Prerequisites

- Docker installed on your machine
- Basic knowledge of command line interface

## Getting Started

1. Clone the repository:
    ```sh
    git clone https://github.com/abdulmajidcse/docker-practice.git
    cd docker-practice
    git checkout multi-lang-with-debian
    ```
    Or directly clone this branch
    ```sh
    git clone --branch multi-lang-with-debian https://github.com/abdulmajidcse/docker-practice.git
    cd docker-practice
    ```

2. Build the Docker image:
    ```sh
    docker build -t multilang-docker-practice .
    ```

3. Run the Docker container:
    ```sh
    docker run --rm multilang-docker-practice
    ```

    You may run this command if you need mount from your local to container when your code will be updated.
    ```sh
    docker run -it --rm --name multilang-docker-practice -v "$(PWD):/app" -w /app multilang-docker-practice
    ```
    You may also run this command if you need to run a specific file.

    Only for PHP.
    ```sh
    docker run -it --rm --name multilang-docker-practice -v "$(PWD):/app" -w /app multilang-docker-practice php test.php
    ```

    Only for Python
    ```sh
    docker run -it --rm --name multilang-docker-practice -v "$(PWD):/app" -w /app multilang-docker-practice python3 test.py
    ```

    Only for NodeJS.
    ```sh
    docker run -it --rm --name multilang-docker-practice -v "$(PWD):/app" -w /app multilang-docker-practice node test.js
    ```

    Note: You may run these above comands in your powershell if you get an error in your other terminal (e.g., Git Bash).

## Acknowledgements

- [Docker Documentation](https://docs.docker.com/)
- [Docker Hub](https://hub.docker.com/)
