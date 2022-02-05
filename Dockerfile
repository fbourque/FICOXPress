FROM ubuntu:latest

ENV PYTHONUNBUFFERED=1
RUN sudo apt update
RUN apt install python3-pip
RUN pip install xpress

#FROM alpine:latest

#RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
#RUN python3 -m ensurepip
#RUN pip3 install --no-cache --upgrade pip setuptools
#RUN pip install xpress
