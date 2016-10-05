#!/bin/sh
## install go packages required

apk add --no-cache protobuf && rm -rf /var/cache/apk/*

go get -u \
  github.com/jteeuwen/go-bindata/... \
  github.com/elazarl/go-bindata-assetfs/... \
  github.com/golang/protobuf/proto \
  github.com/golang/protobuf/protoc-gen-go \
  google.golang.org/grpc \
  github.com/gengo/grpc-gateway/protoc-gen-grpc-gateway \
  github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
  github.com/emirpasic/gods/...
