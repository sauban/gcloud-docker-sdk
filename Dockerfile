FROM docker:latest

RUN apk add --no-cache \
 bash \
 build-base \
 curl \
 git \
 libffi-dev \
 openssh \
 openssl-dev \
 python \
 py-pip \
 python-dev \
 coreutils

RUN curl -sSL https://sdk.cloud.google.com | bash
RUN source /root/google-cloud-sdk/path.bash.inc
ENV PATH $PATH:/root/google-cloud-sdk/bin
