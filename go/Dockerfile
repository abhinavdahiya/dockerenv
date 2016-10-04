FROM golang:1.7.1-alpine

ENV PROTOBUF_VERSION=3.0.2

RUN apk add --no-cache \
  jq \
  zip \
  unzip \
  git \
  vim \
  && rm -rf /var/cache/apk/*

RUN go get -u \
  github.com/nsf/gocode \
  golang.org/x/tools/cmd/goimports \
  github.com/mitchellh/gox \
  github.com/tools/godep

ADD go-packages.sh /tmp

EXPOSE 5555-5565

CMD chmod +x /tmp/go-packages.sh; /bin/sh
