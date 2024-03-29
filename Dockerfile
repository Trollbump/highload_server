FROM python:3.8.12-buster
MAINTAINER Orletskiy Alexander

WORKDIR /usr/src/webserver

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD python main.py
EXPOSE 3000
