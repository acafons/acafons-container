ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y \
    curl \
    libcmocka0 \
    libcmocka-dev \
    build-essential \
    git \
    pkg-config \
    gcc \
    g++ \
    m4 \
    gnulib \
    wget \
    doxygen \
    clang-10 \
    clang-tools-10 \
    pandoc \
    lcov \
    vim-common \
    gawk \
    python3 \
    python3-pip \
    libyaml-dev \
    meson


