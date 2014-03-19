#Julia nightly builds

#VERSION 1.1

FROM ubuntu:quantal

MAINTAINER Julien Laugel jlaugel@gmail.com
RUN apt-get -y install python-software-properties
RUN echo "deb http://archive.ubuntu.com/ubuntu quantal main universe" > /etc/apt/sources.list
RUN add-apt-repository ppa:staticfloat/julianightlies
RUN add-apt-repository ppa:staticfloat/julia-deps
RUN apt-get update
RUN apt-get install -y julia
