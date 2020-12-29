# django3(docker) remote debug with vscode
## summary
This is a standard django project.
It has already completed [django tutorial part 1](https://docs.djangoproject.com/en/3.1/intro/tutorial01/).
Docker-compose is refer to [official docker quickstart](https://docs.docker.com/compose/django/).
In addition, **You can use remote debug with vscode**. Please check [this note](#remote-debug-with-vscode).

## version
- mysql 5.7
- python 3.9
- django 3

## start project

```
$ make build

$ make up
```
※ If you can't create database called django_sample, you should try to exec `make init-db`, `make stop` and `make up` again.


Open url http://127.0.0.1:8000/polls

Show `Hello, world. You're at the polls index.`

## remote debug with vscode
Use python library [ptvsd](https://pypi.org/project/ptvsd/)

### install Python extension for Visual Studio Code
Install vscode [python library](https://marketplace.visualstudio.com/items?itemName=ms-python.python).

![python extension](https://github.com/katsuya-n/pub_docker_django/blob/images/python_extension.png)

Reopen vscode after install.
### open pub_docker_django/ in current directory with vscode

```
.
├── .vscode
├── Dockerfile
├── Makefile
├── README.md
├── composeexample
├── docker-compose.yml
├── manage.py
├── mysql
├── polls
└── requirements.txt
```

### start docker container

```
$ make up
```

### check break point

![break point](https://github.com/katsuya-n/pub_docker_django/blob/images/break_point.png)

**Attention! Break point can't seem to use some of other files(etc. polls/url.py, manage.py ...). Sorry, I don't know the reason.**

### remove comment out
Remove comment out L23 after `make up`.

**Attention! docker container can't start if you remove comment out before make up**

```
ptvsd.enable_attach(address=('0.0.0.0', 3000))
```

![comment out](https://github.com/katsuya-n/pub_docker_django/blob/images/comment_out.png)

### start debug

Enter `fn + F5`(Mac OS). Under bar color changes from blue to orange.

![start debug](https://github.com/katsuya-n/pub_docker_django/blob/images/exec_debug_mode.png)

Reload http://127.0.0.1:8000/polls/, and program will stop break point.

![stop break point](https://github.com/katsuya-n/pub_docker_django/blob/images/stop_break_point.png)
