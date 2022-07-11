FROM node:18.5.0-alpine

WORKDIR /opt/hsd

ENV SOURCE_BRANCH=master
ENV PATH="${PATH}:/opt/hsd/bin:/opt/hsd/node_modules/.bin"

RUN apk add --no-cache bash=5.1.16-r0 unbound-dev=1.13.2-r2 gmp-dev=6.2.1-r1 g++=10.3.1_git20211027-r0 gcc=10.3.1_git20211027-r0 make=4.3-r0 python2=2.7.18-r4 git=2.34.1-r0 && \
    git clone -b ${SOURCE_BRANCH} https://github.com/handshake-org/hsd.git /opt/hsd && \
    npm install --production

ENTRYPOINT ["hsd"]
