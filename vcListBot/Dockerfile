FROM golang:1.14.4-alpine3.12 as build
RUN set -exu; \
    apk add --no-cache --update git; \
    git clone https://github.com/approvers/vcListBot.git --depth=1 /src; \
    cd /src; \
    git checkout 349cfc74c8b39d3c424dd72dfd771be4cff9f4e7; \
    go build -o ./vcListBot;


FROM alpine:3.12
COPY --from=build /src/vcListBot /bot/
RUN mkdir -p /bot/command/assets/
COPY --from=build /src/command/assets/help.json /bot/command/assets/
WORKDIR /bot/
ENTRYPOINT [ "/bot/vcListBot" ]
