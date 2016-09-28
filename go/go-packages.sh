#!/bin/bash
## install go packages required

curl -vsSL "https://github.com/google/protobuf/releases/download/v$PROTOBUF_VERSION/protoc-$PROTOBUF_VERSION-linux-x86_64.zip" -o proto.zip \
  && unzip proto.zip bin/protoc \
  && mv bin/protoc /usr/local/bin \
  && rm -rf proto.zip bin \
  && go get -u -v \
  github.com/jteeuwen/go-bindata/... \
  github.com/elazarl/go-bindata-assetfs/... \
  github.com/nsf/gocode \
  golang.org/x/tools/cmd/goimports \
  github.com/mitchellh/gox \
  github.com/golang/protobuf/proto \
  github.com/golang/protobuf/protoc-gen-go \
  google.golang.org/grpc \
  github.com/gengo/grpc-gateway/protoc-gen-grpc-gateway \
  github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
  github.com/tools/godep \
  github.com/emirpasic/gods/...
