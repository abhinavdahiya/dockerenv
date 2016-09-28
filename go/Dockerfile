FROM golang:1.7.1

ENV PROTOBUF_VERSION=3.0.2

RUN apt-get update && apt-get install -y \
  jq \
  zip \
  unzip \
  vim \
  --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ADD go-packages.sh /tmp

EXPOSE 55000-56000

CMD chmod +x /tmp/go-packages.sh; bash -c '/tmp/go-packages.sh'; bash
