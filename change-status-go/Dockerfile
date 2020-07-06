FROM golang:1.14.4-alpine3.12 as build
RUN set -exu; \
    apk add --no-cache --update git; \
    git clone https://github.com/approvers/change-status-go.git --depth=1 -b refactor /src ; \
    cd /src; \
    git checkout 6917a836354b939d445c3f94d169b4cc4d83d446; \
    go build -o ./change-status-go;


FROM alpine:3.12
COPY --from=build /src/change-status-go /bot/
WORKDIR /bot/
ENTRYPOINT [ "/bot/change-status-go" ]
