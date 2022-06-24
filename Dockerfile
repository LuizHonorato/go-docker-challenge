# BUILD
FROM golang:1.18-buster as builder

WORKDIR /go/src

COPY . .

# Building go executable for Linux
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -a -installsuffix cgo -o app .

# DEPLOY

FROM scratch

WORKDIR /

COPY --from=builder /go/src/app /

CMD ["/app"]