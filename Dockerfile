FROM debian:bookworm

RUN apt-get update && apt-get install git build-essential golang-go -y

WORKDIR /app

COPY . /app/

RUN make release



