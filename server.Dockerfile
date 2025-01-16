FROM golang:1.23.4-alpine AS builder

WORKDIR /app
COPY . /app

RUN apk update && apk add --no-cache make
RUN make build-server

FROM alpine:3.20.0

WORKDIR /app
COPY --from=builder /app/bin/server /app/server
CMD ["/app/server"]
