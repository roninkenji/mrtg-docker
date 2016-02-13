FROM alpine:3.2
MAINTAINER roninkenji

RUN apk add --update mrtg && rm -rf /var/cach/apk/*

ADD myinit.sh /usr/local/bin
RUN chmod +x /usr/local/bin/myinit.sh

ENTRYPOINT ["/usr/local/bin/myinit.sh"]

