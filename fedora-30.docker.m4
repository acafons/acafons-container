FROM fedora:30

# can return 100 if packages need update
RUN yum check-update; \
    rc=$?; \
    if [ $rc -ne 100 ] && [ $rc -ne 0 ]; then \
        echo "yum check-update failed: $rc"; \
        exit $rc; \
    fi

RUN yum -y install \
    libcmocka \
    libcmocka-devel \
    git \
    pkg-config \
    gcc \
    m4 \
    gnulib \
    wget \
    doxygen \
    clang \
    clang-analyzer \
    clang-tools-extra \
    pandoc \
    lcov \
    vim \
    python3-pip \
    libasan \
    libubsan \
    perl-Digest-SHA \
    gawk \
    python3-devel \
    ninja-build

# make install goes into /usr/local/lib/pkgconfig which is non-standard
# Set this so ./configure can find things and we don't have to worry about prefix changes
# to build instructions
ENV PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

# we need/check for just python, Fedora comes with python3 so just symlink it
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN python3 -m pip install meson

WORKDIR /
