FROM ubuntu:20.04
RUN apt update
RUN apt install -y wget git meson ninja g++ build-essential llvm libgmp10 libgmp-dev cmake libnuma libnuma1 libnuma-dev pkg-config
RUN wget http://fast.dpdk.org/rel/dpdk-20.11.1.tar.xz
RUN tar -xJf dpdk-20.11.1.tar.xz
RUN /bin/sh -c 'cd dpdk-stable-20.11.1/ && meson build && cd build && ninja && ninja install'
RUN ldconfig
