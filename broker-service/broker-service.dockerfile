# This build a brokerApp exceccutable file  in our directory when run -> docker-compose up --build -d
# base go image
#FROM golang:1.19-alpine as builder
#
#RUN mkdir /app
#
#COPY . /app
#
#WORKDIR /app
#
#RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api
#
#RUN chmod +x /app/brokerApp


# Copy the excutable binary built instead of of rebuilding all over again.
# build a tiny docker image
FROM alpine:latest

RUN mkdir /app

COPY brokerApp /app

CMD [ "/app/brokerApp" ]