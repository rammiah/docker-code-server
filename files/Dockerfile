FROM golang:1.19-alpine as build
WORKDIR /app
ENV GOPROXY=https://goproxy.cn,https://goproxy.io,direct
ADD / /app
RUN go build -o goservice

# reduce image size
FROM alpine:latest as release
RUN mkdir /app
WORKDIR /app
COPY --from=build /app/goservice /app/goservice
EXPOSE 6789/tcp
ENTRYPOINT ["/app/goservice"]
