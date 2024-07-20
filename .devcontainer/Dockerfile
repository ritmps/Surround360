# # Use the official Ubuntu 16.04 base image
FROM ubuntu:16.04

# Set non-interactive mode for debconf
ARG DEBIAN_FRONTEND=noninteractive

# Preconfigure the keyboard settings
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN echo 'keyboard-configuration keyboard-configuration/layout select "English (US)"' | debconf-set-selections
RUN echo 'keyboard-configuration keyboard-configuration/variant select "English (US)"' | debconf-set-selections

# Install the required starting packages
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    keyboard-configuration \
    software-properties-common \
    binutils-dev \
    build-essential \
    git \
    wget \
    python \
    python-dev \
    python-pip \
    libgflags2v5 \
    libgflags-dev \
    libgoogle-glog-dev \
    openssh-server \
    apt-transport-https \
  ca-certificates \
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Install cmake 3.2.2
WORKDIR /work
RUN wget --progress=dot:giga "https://cmake.org/files/v3.2/cmake-3.2.2.tar.gz" && \
  tar -xzvf cmake-3.2.2.tar.gz && \
  cd cmake-3.2.2 && \
  ./bootstrap && \
  make -j$(nproc) && \
  make install

# Install Boost, Double-conversion, Event, Gflags for Folly
RUN apt-get update --no-install-recommends && \
  apt-get install -y --no-install-recommends \
    libboost-all-dev \
    libdouble-conversion-dev \
    libevent-dev \
    libgflags-dev \
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Install OpenSSL
WORKDIR /work
RUN wget --progress=dot:giga "https://www.openssl.org/source/openssl-1.1.1g.tar.gz" && \
  tar -xzvf openssl-1.1.1g.tar.gz && \
  cd openssl-1.1.1g && \
  ./config && \
  make -j $(nproc) && \
  make install && \
  ldconfig && \
  cd .. && rm -rf openssl-1.1.1g openssl-1.1.1g.tar.gz

# Install Folly
WORKDIR /folly
RUN git clone "https://github.com/facebook/folly.git" /folly && \
  cd /folly && \
  git checkout v2019.11.04.00 && \
  # mkdir build && cd build && \
  cd build && \
  cmake .. && \
  make -j $(nproc) && \
  make install

# Install stuff for Ceres
RUN apt-get update --no-install-recommends && \
  apt-get install -y --no-install-recommends \
    libatlas-base-dev \
    libeigen3-dev \
    libatlas-base-dev \
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Install Ceres
WORKDIR /ceres
RUN git clone "https://ceres-solver.googlesource.com/ceres-solver" /ceres && \
  cd /ceres && \
  git checkout 85c6b5c && \
  mkdir build && cd build && \
  cmake .. && \
  make -j $(nproc) && \
  make install

# Install stuff for OpenCV 
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    python-numpy \
    python-pil \
    zlib1g-dev \  
    libhdf5-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libjemalloc-dev \
    libunwind8-dev \
    libsodium-dev \
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Clone and build OpenCV as per provided instructions
WORKDIR /opencv
RUN git clone "https://github.com/Itseez/opencv.git" /opencv && \
    cd /opencv && \
    git checkout f109c01 && \
    mkdir build && cd build && \
    cmake -D WITH_IPP=OFF .. && \
    make -j $(nproc) && \
    make install

# COLMAP dependencies
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    ninja-build \
    libfreeimage-dev \
    libmetis-dev \
    libpng-dev \
    libjpeg-dev \
    libtiff-dev \
    libglew-dev \
    freeglut3-dev \
    mesa-common-dev \
    qt5-default \
    qtbase5-dev \
    qttools5-dev-tools \
    libqt5opengl5-dev \
    libxi-dev \
    libxmu-dev \
    freeglut3-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /colmap
RUN git clone https://github.com/colmap/colmap.git /colmap && \
    cd /colmap && \
    git checkout tags/2.1 -b 2.1 && \
    mkdir build && cd build && \
    cmake .. -GNinja -DBUILD_TESTING=OFF && \
    ninja && \
    ninja install

# ffmpeg
RUN apt-get update  && \
    apt-get install -y --no-install-recommends \
      ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Gooey

RUN pip install --no-cache-dir setuptools==44.1.1 && \
  pip install --no-cache-dir --upgrade pip==20.3.4 && \
  pip install --no-cache-dir Gooey==1.0.0 

RUN add-apt-repository ppa:nilarimogard/webupd8 && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    python-wxgtk2.8 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
  
# This is where we go
WORKDIR /workspaces
COPY . /workspaces

# Define the entry point
CMD ["bash"]
