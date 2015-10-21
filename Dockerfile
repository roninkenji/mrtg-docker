FROM alpine:3.2
MAINTAINER roninkenji

RUN apk add --update mrtg && rm -rf /var/cach/apk/*

# ENTRYPOINT /usr/local/bin/init.sh

