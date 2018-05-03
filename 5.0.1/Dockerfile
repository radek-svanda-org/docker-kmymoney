FROM ubuntu:18.04

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Prague /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y -q \
        g++ \
        make \
        cmake \
        libgpgme-dev \
        libical-dev \
        libkactivities-dev \
        libgmp-dev \
        libalkimia5-dev \
        libkf5libkdepim-dev \
        libofx-dev \
        wget \
        xz-utils \
        extra-cmake-modules \
        qtbase5-dev \
        libqt5svg5-dev \
        gettext \
        libkchart-dev \
        libgpgmepp-dev

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y -q \
        libfinance-qif-perl \
        libfinance-quote-perl \
        libaqbanking-dev \
        libgwengui-qt5-dev

RUN wget https://download.kde.org/stable/kmymoney/5.0.1/src/kmymoney-5.0.1.tar.xz && \
    xz -d kmymoney-5.0.1.tar.xz && \
    tar xvf kmymoney-5.0.1.tar && \
    rm kmymoney-5.0.1.tar

RUN cd /kmymoney-5.0.1 && \
    mkdir build && \
    cd build && \
    cmake ..

RUN cd /kmymoney-5.0.1/build && \
    make

RUN cd /kmymoney-5.0.1/build && \
    make install
