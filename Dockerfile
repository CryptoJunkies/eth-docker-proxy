FROM ubuntu:xenial

LABEL maintainer="Chris Diehl <cultclassik@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV SRC_REPO='https://github.com/narfman0/eth-proxy.git'

WORKDIR /

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    python-twisted \
    ca-certificates \
 && git clone $SRC_REPO \
 && mv /eth-proxy /app \
 && apt-get remove -y \
    git \
    ca-certificates \
 && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN useradd eth-proxy && echo "eth-proxy:eth-proxy" | chpasswd \
 && chown -R eth-proxy:eth-proxy /app

USER eth-proxy

EXPOSE 8080/tcp

ENTRYPOINT ["python", "/app/eth-proxy.py"]
CMD [""]