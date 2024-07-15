FROM ubuntu:16.04

# Install zsh
# RUN apt-get update && apt-get install -y zsh

# Set zsh as the default shell
# SHELL ["/usr/bin/zsh", "-c"]

# Install necessary packages
RUN apt-get update && apt-get install -y \
  build-essential \
  cmake \
  git \
  wget \
  libboost-all-dev \
  libgoogle-glog-dev \
  libgflags-dev \
  libprotobuf-dev \
  protobuf-compiler \
  libhdf5-dev \
  libatlas-base-dev \
  libopencv-dev \
  libeigen3-dev \
  libdouble-conversion-dev \
  libevent-dev \
  libjemalloc-dev \
  libssl-dev \
  libunwind8-dev \
  libsodium-dev \
  zlib1g-dev \
  binutils-dev \
  libiberty-dev \
  liblz4-dev \
  liblzma-dev \
  pkg-config \
  libzstd-dev \
  ffmpeg \
  libopencv-dev \
  python \
  python-wxgtk3.0 \
  python-wxgtk3.0-dev \  
  python-pip \
  gfortran \
  libgtk-3-dev \
  && apt-get clean\
  && rm -rf /var/lib/apt/lists/*

# Install a newer version of OpenSSL
RUN wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz && \
  tar -xzvf openssl-1.1.1g.tar.gz && \
  cd openssl-1.1.1g && \
  ./config && \
  make -j $(nproc) && \
  make install && \
  ldconfig && \
  cd .. && rm -rf openssl-1.1.1g openssl-1.1.1g.tar.gz

# Install fmt library version 5.0.0
RUN git clone https://github.com/fmtlib/fmt.git /fmt && \
  cd /fmt && \
  git checkout 5.0.0 && \
  mkdir build && cd build && \
  cmake .. && \
  make -j $(nproc) && \
  make install


# Install a newer version of zstd
RUN wget https://github.com/facebook/zstd/releases/download/v1.4.4/zstd-1.4.4.tar.gz && \
  tar -xzvf zstd-1.4.4.tar.gz && \
  cd zstd-1.4.4 && \
  make && \
  make install

# Install Folly
RUN git clone https://github.com/facebook/folly.git /folly && \
cd /folly && \
git checkout v2019.11.04.00 && \
# mkdir build && cd build && \
cd build && \
cmake .. && \
make -j $(nproc) && \
make install

# Install SuiteSparse from source
# RUN wget http://faculty.cse.tamu.edu/davis/SuiteSparse/SuiteSparse-5.1.2.tar.gz && \
#   tar -xzvf SuiteSparse-5.1.2.tar.gz && \
#   # cd SuiteSparse && \
#   # make library -j $(nproc) && \
#   # make install
#   # Build and install SuiteSparse components separately
#   cd SuiteSparse && \
#   cd SuiteSparse_config && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../AMD && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../COLAMD && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../BTF && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../KLU && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../CHOLMOD && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../CCOLAMD && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../CAMD && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../UMFPACK && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../CXSparse && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../LDL && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../RBio && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../SPQR && \
#   make -j $(nproc) && \
#   make install && \
#   cd ../GraphBLAS && \
#   make -j $(nproc) && \
#   make install

# Install Ceres Solver
RUN apt-get install -y \
  libgoogle-glog-dev \
  libatlas-base-dev

RUN git clone https://ceres-solver.googlesource.com/ceres-solver /ceres && \
  cd /ceres && \
  git checkout 85c6b5c && \
  mkdir build && cd build && \
  cmake .. && \
  make -j $(nproc) && \
  make install

# Install Gooey (Python package)
RUN  pip install wxPython==4.0.7.post2 Pillow==6.2.2 colored==1.3.93 Gooey==1.0.8.1

WORKDIR /workspaces
COPY . /workspaces

