FROM python:3.7

USER root

COPY ["requirements.txt", "/requirements.txt"]
RUN pwd
RUN apt-get -y update && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install -r requirements.txt
FROM python:3.7
RUN apt update -y && apt upgrade -y
RUN pip install pipenv
