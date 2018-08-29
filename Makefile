# docker用 Makefile

all: rm build up ps

build:
	docker-compose build

up:
	docker-compose up -d --build

exec:
	docker exec -it goadock_app_dev_1 bash

ps:
	docker ps -a && echo "\n"
	docker-compose ps

rm:
	docker-compose stop
	docker-compose rm -f