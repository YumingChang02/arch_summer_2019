FROM ubuntu:latest

# example of downloading a executable and add to path
RUN mkdir /tmp/bat
WORKDIR /tmp/bat

RUN apt update && \
    apt install -y \
    wget \
  && rm -rf /var/lib/apt/lists/*

RUN [ "/bin/bash", "-c", "set -o pipefail && wget -qO- https://github.com/sharkdp/bat/releases/download/v0.11.0/bat-v0.11.0-x86_64-unknown-linux-gnu.tar.gz | tar -xz --strip 1" ]
ENV PATH="$PATH:/tmp/bat"
CMD [ "bash" ]