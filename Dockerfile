FROM python:3.9-alpine

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONNUNBUFFERED 1

RUN apk update 
RUN apk add postgresql-dev gcc python3-dev musl-dev libc-dev linux-headers

RUN pip install --upgrade pip
COPY ./requirements.txt .

RUN pip install -r requirements.txt
RUN pip install psycopg2-binary

COPY . .