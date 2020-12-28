# pub_docker_django
## summary
This is a standard django project. It has already completed [django tutorial part 1](https://docs.djangoproject.com/en/3.1/intro/tutorial01/). Docker-compose is refer to [official docker quickstart](https://docs.docker.com/compose/django/).

In addition, **You can use remote debug with vscode**. Please check [this note](#use-remote-debug).

## version
mysql 5.7
python 3.9
django 3

## start project

```
$ make build

$ make up
```
※ If you can't create database called django_sample, you should try to exec `make init-db`, `make stop` and `make up` again.


Open url http://127.0.0.1:8000/polls

Show `Hello, world. You're at the polls index.`

## remote debug with vscode
