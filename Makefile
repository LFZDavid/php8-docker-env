# Get the current directory name as project name
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
PROJECT_NAME := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

# Get current user id and group id
USER_ID := $(shell id -u)
GROUP_ID := $(shell id -g)

build:
	USER_ID=$(shell id -u) GROUP_ID=$(shell id -g) PROJECT_NAME=$(notdir $(patsubst %/,%,$(dir $(mkfile_path)))) docker-compose build

start:
	USER_ID=$(shell id -u) GROUP_ID=$(shell id -g) PROJECT_NAME=$(notdir $(patsubst %/,%,$(dir $(mkfile_path)))) docker-compose up -d

stop:
	docker-compose down --remove-orphans

restart: 
	stop start

enter:
	docker-compose exec www bash

composer-install:
	docker-compose exec www composer install

test:
	docker-compose exec www vendor/bin/phpunit --testdox
