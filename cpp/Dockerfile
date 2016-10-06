FROM alpine:3.4

RUN apk add --no-cache \
  git \
  g++ \
  && rm -rf /var/cache/apk/*

ADD cpp-exec.sh /tmp
