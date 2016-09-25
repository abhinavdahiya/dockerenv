FROM golang:1.7.1

ENV GLIDE_VERSION=v0.12.2 \
    GLIDE_HOME=/root
    PROTOBUF_VERSION=3.0.2

RUN apt-get update && apt-get install -y \
  jq \
  man \
  upx \
  zip \
  unzip \
  --no-install-recommends \
  apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && curl -sSL https://github.com/Masterminds/glide/releases/download/$GLIDE_VERSION/glide-$GLIDE_VERSION-linux-amd64.tar.gz \
    | tar -vxz -C /usr/local/bin --strip=1 \
  curl -sSL https://github.com/google/protobuf/releases/download/v$PROTOBUF_VERSION/protoc-$PROTOBUF_VERSION-linux-x86_64.zip -o proto.zip \
  && unzip -p proto.zip bin/protoc \
  && rm -rf proto.zip \
  && mv protoc /usr/local/bin \
  && go get -u -v \
  github.com/mitchellh/gox \
  github.com/golang/protobuf/proto \
  github.com/golang/protobuf/protoc-gen-go \
  google.golang.org/grpc \
  github.com/gengo/grpc-gateway/protoc-gen-grpc-gateway \
  github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
  github.com/tools/godep
