# Docker Practice - python-env

This repository contains exercises and examples for learning Docker. Here you may get an example about Python in this branch.

## Prerequisites

- Docker installed on your machine
- Basic knowledge of command line interface

## Getting Started

1. Clone the repository:
    ```sh
    git clone https://github.com/abdulmajidcse/docker-practice.git
    cd docker-practice
    git checkout python-env
    ```
    Or directly clone this branch
    ```sh
    git clone --branch python-env https://github.com/abdulmajidcse/docker-practice.git
    cd docker-practice
    ```

2. Build the Docker image:
    ```sh
    docker build -t python-docker-practice .
    ```

3. Run the Docker container:
    ```sh
    docker run --rm python-docker-practice
    ```

    You may run this command if you need mount from your local to container when your code will be updated.
    ```sh
    docker run -it --rm --name python-docker-practice  -v "$(PWD):/app" -w /app python-docker-practice
    ```
    You may also run this command if you need to run a specific file.
    ```sh
    docker run -it --rm --name python-docker-practice -v "$(PWD):/app" -w /app python-docker-practice python test.py
    ```
    Note: You may run these above comands in your powershell if you get an error in your other terminal (e.g., Git Bash).

## Acknowledgements

- [Docker Documentation](https://docs.docker.com/)
- [Docker Hub](https://hub.docker.com/)
