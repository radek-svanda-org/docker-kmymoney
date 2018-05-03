FROM ubuntu:18.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y -q tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Prague /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y -q kmymoney
