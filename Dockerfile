FROM python:3.8.5-alpine

ENV PYTHONPATH /usr/bin/python3.8

COPY django_blog/ app/

RUN apk add python3-dev postgresql-dev musl-dev gcc
RUN pip3 install -r app/requirements.txt \
    && pip3 install virtualenv \
    && virtualenv env \
    && source env/bin/activate 

