FROM ubuntu:latest

RUN apt-get update \
    && apt-get -y install gcc

COPY bin/ .

RUN gcc -o main *.c \
    && chmod +x main*

CMD "./main"
