FROM alpine:3.10.3

LABEL MAINTAINER="and"
LABEL NAME="Linuc ping server"
LABEL VERSION="1.0.0"

EXPOSE 9000

RUN apk update && apk add iputils

ARG PING_ADDR="google.com"
ENV PING_ADDR_ENV="google.com"

ENTRYPOINT ping ${PING_ADDR_ENV}