FROM python:3.9-slim

RUN apt update
RUN apt-get install wget curl grep sed dpkg nano procps cron git -y

COPY python-dependencies-math ./
RUN pip install --no-cache-dir -r python-dependencies-math

COPY python-dependencies-autres ./
RUN pip install --no-cache-dir -r python-dependencies-autres
