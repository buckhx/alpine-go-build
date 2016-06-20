FROM golang:alpine

RUN apk update && apk add --no-cache --virtual .build build-base git
RUN GIT_SSL_NO_VERIFY=true go get github.com/mattn/go-sqlite3 && go install github.com/mattn/go-sqlite3
