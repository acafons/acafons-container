FROM ubuntu:18.04

include(`ubuntu_20.04_base_deps.m4')
include(`pip3.m4')

RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-10 100
RUN update-alternatives --install /usr/bin/scan-build scan-build /usr/bin/scan-build-10 100

WORKDIR /
