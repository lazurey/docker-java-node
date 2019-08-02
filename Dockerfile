FROM anapsix/alpine-java

RUN echo http://dl-cdn.alpinelinux.org/alpine/v3.9/main > /etc/apk/repositories; \
    echo http://dl-cdn.alpinelinux.org/alpine/v3.9/community >> /etc/apk/repositories

RUN apk update && \
  apk add --update curl nodejs-current nodejs-npm git

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
