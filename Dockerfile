FROM debian:bookworm

RUN apt-get update && apt-get install git build-essential golang-go -y

WORKDIR /app

COPY . /app/

RUN make release

# TODO: Add a multi-stage build to reduce the size of the final image

