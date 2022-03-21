FROM node:17.7.2-alpine

WORKDIR /opt/hsd

ENV SOURCE_BRANCH=master
ENV PATH="${PATH}:/opt/hsd/bin:/opt/hsd/node_modules/.bin"

RUN apk update && apk add bash unbound-dev gmp-dev g++ gcc make python2 git && \
    git clone -b ${SOURCE_BRANCH} https://github.com/handshake-org/hsd.git /opt/hsd && \
    npm install --production

ENTRYPOINT ["hsd"]
