FROM alpine:latest

RUN mkdir /foo
RUN echo hello world > /foo/data.txt
