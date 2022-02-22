FROM python:3.8.7

COPY requirements.txt /app/requirements.txt
WORKDIR /app

ENV FLASK_APP=/app/file1.py

#RUN apt-get update && apt-get install -y sqlite3

RUN pip install -r requirements.txt


RUN export CONFIGPROXY_AUTH_TOKEN=$(openssl rand -hex 32)




CMD flask run --host 0.0.0.0 --port 5000