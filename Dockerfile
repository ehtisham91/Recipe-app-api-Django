FROM python:3.7-alpine
MAINTAINER Ehtisham Ashraf

ENV PYTHONBUFFERED 1

COPY ./requiremenets.txt /requiremenets.txt
RUN pip install -r /requiremenets.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
User user
