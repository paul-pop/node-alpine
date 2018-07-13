FROM node:alpine

MAINTAINER Paul Pop <paulpop88@gmail.com>

ENV USER app
ENV WORKDIR /var/$USER

WORKDIR $WORKDIR

RUN addgroup -S $USER && adduser -Sg $USER $USER && \
    chown -R $USER:$USER $WORKDIR && \
    apk add --update curl && \
    rm -rf /var/cache/apk/*

