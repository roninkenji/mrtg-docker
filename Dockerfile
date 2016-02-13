FROM alpine:3.2
MAINTAINER roninkenji

RUN apk add --update mrtg && rm -rf /var/cach/apk/*

COPY myinit.sh /usr/local/bin

ENTRYPOINT /usr/local/bin/myinit.sh

