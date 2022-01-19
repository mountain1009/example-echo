FROM golang:1.17.6-alpine

WORKDIR /go/src/github.com/mountain1009/example-echo

RUN apk update && apk add git

COPY ./api/go.mod ./api/go.sum ./
RUN go mod download


RUN go get -u github.com/cosmtrek/air && \
    go build -o /go/bin/air github.com/cosmtrek/air

COPY ./api .


EXPOSE 8080


CMD ["air", "-c", ".air.toml"]
