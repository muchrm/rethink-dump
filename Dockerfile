FROM python:3

RUN pip install rethinkdb
WORKDIR /backup