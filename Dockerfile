FROM alpine:latest

RUN apk add --no-cache gcc
RUN apk add --no-cache g++
RUN apk add --no-cache linux-headers
RUN apk add --no-cache make
RUN apk add --no-cache curl

WORKDIR /
COPY . /

RUN /bin/sh build_deps.sh

CMD ["/usr/local/bin/cmake", "--version"]
