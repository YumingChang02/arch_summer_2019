FROM ubuntu:latest

# install required executable ( wget )
RUN apt update && \
    apt install -y \
    wget \
  && rm -rf /var/lib/apt/lists/*

# example of downloading a executable and add to path
RUN mkdir /tmp/bat
WORKDIR /tmp/bat

RUN [ "/bin/bash", "-c", "set -o pipefail && wget -qO- https://github.com/sharkdp/bat/releases/download/v0.11.0/bat-v0.11.0-x86_64-unknown-linux-gnu.tar.gz | tar -xz --strip 1" ]
ENV PATH="$PATH:/tmp/bat"

WORKDIR /target

CMD [ "bash" ]
