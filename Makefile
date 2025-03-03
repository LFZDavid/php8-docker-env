# Get the current directory name as project name
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
PROJECT_NAME := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

# Get current user id and group id
USER_ID := $(shell id -u)
GROUP_ID := $(shell id -g)

build:
	USER_ID=$(shell id -u) GROUP_ID=$(shell id -g) PROJECT_NAME=$(notdir $(patsubst %/,%,$(dir $(mkfile_path)))) docker-compose up -d --build

up:
	USER_ID=$(shell id -u) GROUP_ID=$(shell id -g) PROJECT_NAME=$(notdir $(patsubst %/,%,$(dir $(mkfile_path)))) docker-compose up -d

down:
	PROJECT_NAME=$(notdir $(patsubst %/,%,$(dir $(mkfile_path)))) docker-compose down --remove-orphans

restart: 
	PROJECT_NAME=$(notdir $(patsubst %/,%,$(dir $(mkfile_path)))) stop start

enter:
	PROJECT_NAME=$(notdir $(patsubst %/,%,$(dir $(mkfile_path)))) docker-compose exec app bash

composer-install:
	docker-compose exec app composer install

test:
	docker-compose exec app vendor/bin/phpunit --testdox
