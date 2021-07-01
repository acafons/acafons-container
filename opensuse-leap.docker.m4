FROM opensuse/leap

RUN zypper ref
RUN zypper -n in \
    libcmocka-devel \
    git \
    pkg-config \
    gcc \
    m4 \
    wget \
    doxygen \
    clang \
    pandoc \
    lcov \
    vim \
    clang7-checker \
    xz \
    gzip \
    which \
    gcc-c++ \
    gawk \
    python3 \
    python3-pip \
    ninja

# Python2 since OpenSuse default
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install pyyaml
RUN python3 -m pip install meson

WORKDIR /
