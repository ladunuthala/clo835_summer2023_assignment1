FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && \
    apt-get install -y python3-pip mysql-client && \
    pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 install -r requirements.txt

EXPOSE 8080
CMD ["python3", "app.py"]

