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
    python \
    python-pip \
    meson

# Python2 since OpenSuse default
RUN python -m pip install --upgrade pip
RUN python -m pip install pyyaml

WORKDIR /
