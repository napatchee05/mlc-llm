FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    python3.11 \
    python3-pip \
    git \
    cmake \
    ninja-build \
    build-essential \
    libopenblas-dev \
    libcurl4-openssl-dev \
    libtinfo-dev \
    zlib1g-dev \
    wget \
    rustc \
    cargo \
    git-lfs \
    && apt-get clean

RUN apt install -y llvm-13 llvm-13-dev libclang-13-dev clang-13

RUN pip3 install --upgrade pip setuptools wheel

WORKDIR /workspace/

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y --default-toolchain 1.65.0

ENV PATH="/root/.cargo/bin:${PATH}"