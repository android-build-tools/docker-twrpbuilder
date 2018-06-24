## Minimal Docker image for TWRP-Builder project

FROM openjdk:8-slim
MAINTAINER Surendrajat <sk2812283@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Required packages
RUN apt-get -qq update
RUN apt-get install -y aria2 bison g++-multilib git make python zip && \
    rm -rf /var/lib/apt/lists/*

ENV DEBAIN_FRONTEND teletype

# External mount point for travis-ci and alike
VOLUME /root/twrp
