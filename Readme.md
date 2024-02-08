# PHP 8 Docker Environement

## Description
This is a base image for **PHP 8.1** projects *(Symfony 6)*. It is based on the official PHP image and includes the following:
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

1. Build containers
    ```bash
      make build
    ```

2. Start containers
   ```bash
      make start
   ```

## Command shortcuts

```bash
# Build containers
make build

# Start containers (build if needed)
make start

# Stop containers
make stop

# Restart
make restart

# Open terminal inside apache container
make enter

# Execute composer install inside apache container
make composer-install

# Launch phpunit
make test
```
