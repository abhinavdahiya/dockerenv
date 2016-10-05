FROM golang:1.7.1-alpine

ENV PROTOBUF_VERSION=3.0.2

RUN apk add --no-cache \
  jq \
  git \
  protobuf \
  && rm -rf /var/cache/apk/*

RUN go get -v \
  github.com/nsf/gocode \
  golang.org/x/tools/cmd/goimports \
  github.com/mitchellh/gox \
  github.com/tools/godep \
  github.com/jteeuwen/go-bindata/... \
  github.com/elazarl/go-bindata-assetfs/... \
  github.com/golang/protobuf/proto \
  github.com/golang/protobuf/protoc-gen-go \
  google.golang.org/grpc \
  github.com/gengo/grpc-gateway/protoc-gen-grpc-gateway \
  github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
  github.com/emirpasic/gods/...


EXPOSE 5555-5565

