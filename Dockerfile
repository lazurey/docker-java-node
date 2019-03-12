FROM anapsix/alpine-java

RUN apk update && \
  apk add --update curl nodejs-current nodejs-npm git

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
