up:
	docker-compose up -d

build:
	docker-compose build

stop:
	docker-compose stop

init-db:
	mysql -u root -h 127.0.0.1 -P 3306 -ppassword -e "CREATE DATABASE django_sample"

db:
	mysql -u root -h 127.0.0.1 -P 3306 -ppassword

clear-pycache:
	find . -name '*.pyc' -delete
