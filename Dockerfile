FROM golang:alpine

RUN apk update && apk add git

RUN go get github.com/gin-gonic/gin

COPY . /go/src/github.com/carrollgt91/go-network

RUN go install github.com/carrollgt91/go-network

ENTRYPOINT /go/bin/go-network

EXPOSE 80
