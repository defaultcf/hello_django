FROM python:3.5.2-alpine

ADD requirements.txt /

RUN apk update && \
    apk add --virtual build-dependencies --no-cache gcc postgresql-dev musl-dev && \
    pip install -r requirements.txt && \
    apk del build-dependencies

RUN apk add --no-cache postgresql-client
