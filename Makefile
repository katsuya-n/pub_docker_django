up:
	docker-compose up -d

build:
	docker-compose build

clear-pycache:
	find . -name '*.pyc' -delete
