FROM node:14.5.0-alpine3.12
RUN set -exu; \
    apk add --no-cache --update git; \
    git clone https://github.com/approvers/pindome-chan.git --depth=1 /src; \
    cd /src; \
    git checkout 5eeadc2b28ccae6461c5f99c6858b2d363a45195; \
    yarn install;

WORKDIR /src
ENTRYPOINT [ "yarn", "start" ]
