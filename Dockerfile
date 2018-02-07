FROM python:2.7.14-alpine3.7

LABEL maintainer="Chris Diehl <cultclassik@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV SRC_REPO='https://github.com/CryptoJunkies/eth-proxy'

WORKDIR /

RUN apk update \
  && apk add \
    git \
    build-base \
    python-dev \
 && git clone $SRC_REPO \
 && mv /eth-proxy /app \
 && cd /app \
 && python setup.py install

WORKDIR /app

#RUN useradd eth-proxy && echo "eth-proxy:eth-proxy" | chpasswd \
# && chown -R eth-proxy:eth-proxy /app

#USER eth-proxy

EXPOSE 8080/tcp

ENTRYPOINT ["ethproxy"]
CMD [""]