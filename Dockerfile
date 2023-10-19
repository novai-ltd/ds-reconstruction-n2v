FROM python:3.9-slim-buster

RUN apt-get update
RUN apt-get install curl -y
RUN pip install poetry==1.2.1

COPY my_package /app/my_package
COPY tests /app/tests
COPY pyproject.toml /app/pyproject.toml

WORKDIR /app

RUN poetry install

##
# docker build -t 021271968172.dkr.ecr.eu-west-2.amazonaws.com/my_package .
# docker run --rm -it 021271968172.dkr.ecr.eu-west-2.amazonaws.com/my_package /bin/bash
##