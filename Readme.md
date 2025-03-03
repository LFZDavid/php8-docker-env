# Docker Symfony (6) Base

## Description
This is a base image for Symfony 6 projects. It is based on the official PHP image and includes the following:
- PHP 8.1
- git
- libicu-dev 
- g++ 
- libpng-dev 
- libxml2-dev 
- libzip-dev 
- libonig-dev 
- libxslt-dev 
- unzip
- apcu
- nodejs 
- npm 
- wget
- composer
- symfony cli
- php extensions: 
  - pdo 
  - pdo_mysql 
  - opcache 
  - intl 
  - zip 
  - calendar 
  - dom 
  - mbstring 
  - gd 
  - xsl

## Installation

1. Create the project directory 
<br>*(The name will be used as project name in `docker-compose.yml`)*

2. Get Files
    - Create a `Fork` of this project
  <br>OR
    - Clone
      ```bash
        # Get repo content
        git clone https://github.com/LFZDavid/php8-docker-env.git <PROJECT_DIRECTORY>/
        
        cd <PROJECT_DIRECTORY>
        
        # Remove .git folder
        rm -rf .git
        # Create app folder
        mkdir app
      ```

3. Build containers & run them

    ```bash
      make build
    ```

4. Run stack

    ```bash
      make up
    ```

5. Create a new Symfony project

    ```bash
      # Open terminal inside apache container
      make enter

      # Create a new Symfony project inside apache container (checkout symfony cli documentation)
      # current options: --webapp --api --version=value
      symfony new . --no-git
    ```


## Command shortcuts

```bash
# Build containers
make build

# Start containers (build if needed)
make up

# Stop containers
make down

# Restart
make restart

# Open terminal inside apache container
make enter

# Execute composer install inside apache container
make composer-install

# Launch phpunit
make test
```
