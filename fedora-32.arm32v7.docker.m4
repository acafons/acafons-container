FROM arm32v7/fedora:32

# can return 100 if packages need update
RUN dnf check-update; \
    rc=$?; \
    if [ $rc -ne 100 ] && [ $rc -ne 0 ]; then \
        echo "dnf check-update failed: $rc"; \
        exit $rc; \
    fi

RUN dnf -y install \
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
    meson

WORKDIR /
