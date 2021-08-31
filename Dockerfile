FROM ubuntu:20.04
RUN apt-get update && apt-get install git make build-essential gcc -y --no-install-recommends
RUN GIT_SSL_NO_VERIFY=true git clone https://github.com/wolfcw/libfaketime.git
WORKDIR /libfaketime/src
RUN make install
