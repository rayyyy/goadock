# docker用 Makefile

all: rm build up ps

build:
	docker-compose build

up:
	docker-compose up -d --build

exec:
	docker-compose exec app_dev bash

ps:
	docker ps -a && echo "\n"
	docker-compose ps

rm:
	docker-compose stop
	docker-compose rm -f