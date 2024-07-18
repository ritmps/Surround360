FROM nvidia/cuda:11.3.1-cudnn8-devel-ubuntu16.04

# Set non-interactive mode for debconf
ARG DEBIAN_FRONTEND=noninteractive

# Preconfigure the keyboard settings
RUN echo 'keyboard-configuration keyboard-configuration/layout select "English (US)"' | debconf-set-selections
RUN echo 'keyboard-configuration keyboard-configuration/variant select "English (US)"' | debconf-set-selections

# Install the required starting packages
RUN apt-get update && \
  apt-get install -y \
  keyboard-configuration \
  binutils-dev \
  build-essential \
  git \
  wget \
  python \
  python-dev \
  libgflags2v5 \
  libgflags-dev \
  libgoogle-glog-dev \  
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Install cmake 3.2.2
RUN wget https://cmake.org/files/v3.2/cmake-3.2.2.tar.gz && \
  tar -xzvf cmake-3.2.2.tar.gz && \
  cd cmake-3.2.2 && \
  ./bootstrap && \
  make -j$(nproc) && \
  make install

# Install Boost, Double-conversion, Event, Gflags for Folly
RUN apt-get update && \
  apt-get install -y \
  libboost-all-dev \
  libdouble-conversion-dev \
  libevent-dev \
  libgflags-dev \
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Install OpenSSL
RUN wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz && \
  tar -xzvf openssl-1.1.1g.tar.gz && \
  cd openssl-1.1.1g && \
  ./config && \
  make -j $(nproc) && \
  make install && \
  ldconfig && \
  cd .. && rm -rf openssl-1.1.1g openssl-1.1.1g.tar.gz

# Install Folly
RUN git clone https://github.com/facebook/folly.git /folly && \
  cd /folly && \
  git checkout v2019.11.04.00 && \
  # mkdir build && cd build && \
  cd build && \
  cmake .. && \
  make -j $(nproc) && \
  make install

# Install stuff for Ceres
RUN apt-get update && \
  apt-get install -y \
  libatlas-base-dev \
  libeigen3-dev \
  libatlas-base-dev \
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Install Ceres
RUN git clone https://ceres-solver.googlesource.com/ceres-solver /ceres && \
  cd /ceres && \
  git checkout 85c6b5c && \
  mkdir build && cd build && \
  cmake .. && \
  make -j $(nproc) && \
  make install

# Install stuff for OpenCV 
RUN apt-get update && \
  apt-get install -y \
  python-numpy \
  zlib1g-dev \  
  libhdf5-dev \
  libprotobuf-dev \
  protobuf-compiler \
  libjemalloc-dev \
  libunwind8-dev \
  libsodium-dev \
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Set CUDA environment variables
ENV PATH /usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/cuda/lib64:${LD_LIBRARY_PATH}

RUN files=$(ls -l /usr/local/cuda/lib64) && echo $files

# Clone and build OpenCV as per provided instructions
RUN git clone https://github.com/Itseez/opencv.git /opencv && \
    cd /opencv && \
    git checkout f109c01 && \
    mkdir build && cd build && \
    cmake -D WITH_IPP=OFF \
          .. && \
    make -j $(nproc) && \
    make install

# Intermediate commit
RUN echo "OpenCV installed"

# This is where we go
WORKDIR /workspaces
COPY . /workspaces
