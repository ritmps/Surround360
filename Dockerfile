# Stage 1: Build environment
FROM ubuntu:16.04

# FROM local/ubuntu16cuda10:go

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
    python-numpy \
    python-pil \
    libgflags2v5 \
    libgflags-dev \
    libgoogle-glog-dev \
    openssh-server \
    apt-transport-https \
    ca-certificates \
  && apt-get clean \
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
  cd .. && rm -rf openssl-1.1.1g*

# Install cmake 3.18
WORKDIR /work
RUN wget --progress=dot:giga "https://cmake.org/files/v3.18/cmake-3.18.4.tar.gz" && \
  tar -xzvf cmake-3.18.4.tar.gz && \
  cd cmake-3.18.4 && \
  ./bootstrap && \
  make -j$(nproc) && \
  make install && \
  cd .. && rm -rf cmake-3.18.4*

# Install Boost, Event, Gflags for Folly
RUN apt-get update --no-install-recommends && \
  apt-get install -y --no-install-recommends \
    libboost-all-dev \
    libevent-dev \
    libgflags-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install double-conversion from source with -fPIC
WORKDIR /work
RUN git clone https://github.com/google/double-conversion.git && \
  cd double-conversion && \
  cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON . && \
  make -j$(nproc) && \
  make install && \
  ldconfig && \
  cd .. && rm -rf double-conversion

# Install fmt from source
WORKDIR /fmt
RUN git clone https://github.com/fmtlib/fmt.git && \
  cd fmt && \
  git checkout 7.1.3 && \
  mkdir build && cd build && \
  cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_SHARED_LIBS=ON .. && \
  make -j$(nproc) && \
  make install && \
  ldconfig && \
  cd / && rm -rf /fmt

# Install an older version of Folly with -fPIC
WORKDIR /folly
RUN git clone "https://github.com/facebook/folly.git" /folly && \
  cd /folly && \
  git checkout v2018.05.07.00 && \
  cd build && \
  cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_SHARED_LIBS=ON .. && \
  make -j $(nproc) && \
  make install && \
  cd / && rm -rf /folly

# Install dependencies for Ceres
RUN apt-get update --no-install-recommends && \
  apt-get install -y --no-install-recommends \
    libatlas-base-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Add Eigen3
RUN apt-get update --no-install-recommends && \
  apt-get install -y --no-install-recommends \
    libeigen3-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install Ceres
WORKDIR /ceres
RUN git clone "https://ceres-solver.googlesource.com/ceres-solver" /ceres && \
  cd /ceres && \
  git checkout 85c6b5c && \
  mkdir build && cd build && \
  cmake .. && \
  make -j $(nproc) && \
  make install && \
  cd / && rm -rf /ceres

# Install dependencies for OpenCV
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    zlib1g-dev \
    libhdf5-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libjemalloc-dev \
    libunwind8-dev \
    libsodium-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Clone and build OpenCV as per provided instructions
# WORKDIR /opencv
# RUN git clone "https://github.com/Itseez/opencv.git" /opencv && \
#     cd /opencv && \
#     git checkout f109c01 && \
#     mkdir build && cd build && \
#     cmake -D WITH_IPP=OFF .. && \
#     make -j $(nproc) && \
#     make install && \
#     cd / && rm -rf /opencv

# # Install CUDA dependencies
# RUN apt-get update && \
#   apt-get install -y --no-install-recommends \
#     cuda-toolkit-10-2 \
#   && apt-get clean \
#   && rm -rf /var/lib/apt/lists/*

# # Set CUDA environment variables
# ENV CUDA_HOME=/usr/local/cuda-10.2
# ENV LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}
# ENV PATH=${CUDA_HOME}/bin:${PATH}

# # Clone and build OpenCV with CUDA
# WORKDIR /opencv
# RUN git clone "https://github.com/Itseez/opencv.git" /opencv && \
#     cd /opencv && \
#     git checkout f109c01 && \
#     mkdir build && cd build && \
#     cmake -D WITH_IPP=OFF \
#           -D WITH_CUDA=ON \
#           -D BUILD_opencv_cudacodec=ON \
#           -D CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-10.2 \
#           -D CUDA_CUDART_LIBRARY=/usr/local/cuda-10.2/lib64/libcudart.so \
#           -D CUDA_CUDA_LIBRARY=/usr/local/cuda-10.2/lib64/stubs/libcuda.so \
#           -D CUDA_NVCC_EXECUTABLE=/usr/local/cuda-10.2/bin/nvcc \
#           -D CUDA_npp_LIBRARY=/usr/local/cuda-10.2/lib64/libnppif.so \
#           -D CUDA_nppi_LIBRARY=/usr/local/cuda-10.2/lib64/libnppig.so \
#           -D CUDA_npps_LIBRARY=/usr/local/cuda-10.2/lib64/libnppisu.so \
#           -D CUDA_cufft_LIBRARY=/usr/local/cuda-10.2/lib64/libcufft.so \
#           .. && \
#     make -j $(nproc) && \
#     make install && \
#     cd / && rm -rf /opencv

# Install the CUDA GPG key and update the package lists
# Install CUDA dependencies with the necessary flags
# RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub && \
#   apt-get update && \
#   apt-get install -y --no-install-recommends \
#     cuda-toolkit-10-2 \
#     libcuda1-418 \
#     --allow-unauthenticated \
#   && apt-get clean \
#   && rm -rf /var/lib/apt/lists/*

# # Set CUDA environment variables
# ENV CUDA_HOME=/usr/local/cuda-10.2
# ENV LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}
# ENV PATH=${CUDA_HOME}/bin:${PATH}

# Clone and build OpenCV with CUDA
WORKDIR /opencv
RUN git clone "https://github.com/opencv/opencv.git" /opencv && \
    cd /opencv && \
    git checkout f109c01 && \
    mkdir build && cd build && \
    cmake -D WITH_IPP=OFF \
          # -D WITH_CUDA=OFF \
          # -D BUILD_opencv_cudacodec=OFF \
          # -D CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-10.2 \
          # -D CUDA_CUDART_LIBRARY=/usr/local/cuda-10.2/lib64/libcudart.so \
          # -D CUDA_CUDA_LIBRARY=/usr/local/cuda-10.2/lib64/stubs/libcuda.so \
          # -D CUDA_NVCC_EXECUTABLE=/usr/local/cuda-10.2/bin/nvcc \
          # -D CUDA_npp_LIBRARY=/usr/local/cuda-10.2/lib64/libnppif.so \
          # -D CUDA_nppi_LIBRARY=/usr/local/cuda-10.2/lib64/libnppig.so \
          # -D CUDA_npps_LIBRARY=/usr/local/cuda-10.2/lib64/libnppisu.so \
          # -D CUDA_cufft_LIBRARY=/usr/local/cuda-10.2/lib64/libcufft.so \
          # -D CUDA_VERSION_MAJOR=10 \
          # -D CUDA_VERSION_MINOR=2 \
          # -D CUDA_VERSION=10.2 \
          .. && \
    make -j $(nproc) && \
    make install && \
    cd / && rm -rf /opencv
  
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
    cmake .. -GNinja \
      -DBUILD_TESTING=OFF \
      # -DCUDA_ENABLED=OFF \
      . && \
    ninja && \
    ninja install && \
    cd / && rm -rf /colmap

# ffmpeg
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Gooey dependencies
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    libgtk2.0-0 \
    libgtk2.0-dev \
    pkg-config \
    libgtk2.0-bin \
    libgtk2.0-common \
    libnotify-dev \
    libsdl1.2-dev \
    gstreamer0.10-plugins-base \
    gstreamer0.10-plugins-good \
    gstreamer0.10-tools \
    gstreamer0.10-x \
    gstreamer0.10-alsa \
    gstreamer0.10-pulseaudio \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Pre-install wxPython before Gooey
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py && \
  python2.7 get-pip.py && \
  wget https://extras.wxpython.org/wxPython4/extras/linux/gtk3/ubuntu-16.04/wxPython-4.0.0-cp27-cp27mu-linux_x86_64.whl && \
  pip2 install wxPython-4.0.0-cp27-cp27mu-linux_x86_64.whl && \
  rm wxPython-4.0.0-cp27-cp27mu-linux_x86_64.whl && \
  rm get-pip.py

# Gooey
RUN pip install --no-cache-dir setuptools==44.1.1 && \
  pip install --no-cache-dir --upgrade pip==20.3.4 && \
  pip install --no-cache-dir Gooey==1.0.0 --no-deps

# Add PPA and install python-wxgtk2.8
RUN add-apt-repository ppa:nilarimogard/webupd8 && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    python-wxgtk2.8 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install dependencies for OpenGL and GTK
RUN apt-get update && \
apt-get install -y --no-install-recommends \
  libncurses5-dev \
  libjpeg-dev \
  libgtkmm-3.0-dev \
  libglibmm-2.4-dev \
  libgl1-mesa-dev \
  libglew-dev \
  libglu1-mesa-dev \
  x11-apps \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# # Install LLVM 3.7
# WORKDIR /llvm
# RUN wget https://releases.llvm.org/3.7.1/llvm-3.7.1.src.tar.xz && \
#   tar -xvf llvm-3.7.1.src.tar.xz && \
#   mkdir llvm-3.7.1.src/build && \
#   cd llvm-3.7.1.src/build && \
#   cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD="X86" .. && \
#   make -j$(nproc) && \
#   make install && \
#   cd / && rm -rf /llvm

# # Install Clang tools for LLVM 3.7
# WORKDIR /llvm
# RUN wget https://releases.llvm.org/3.7.1/cfe-3.7.1.src.tar.xz && \
#   tar -xvf cfe-3.7.1.src.tar.xz && \
#   mkdir cfe-3.7.1.src/build && \
#   cd cfe-3.7.1.src/build && \
#   # cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_CONFIG=/usr/local/bin/llvm-config .. && \
#   cmake -DLLVM_ENABLE_TERMINFO=OFF \
#   -DLLVM_TARGETS_TO_BUILD="X86" \
#   # -DLLVM_TARGETS_TO_BUILD="X86;ARM;NVPTX;AArch64;Mips;PowerPC" \
#   -DLLVM_ENABLE_ASSERTIONS=ON -DCMAKE_BUILD_TYPE=Release .. && \ 
#   make -j$(nproc) && \
#   make install && \
#   cd / && rm -rf /llvm

# # Install Halide from source with GPU features disabled
# WORKDIR /halide
# RUN git clone https://github.com/halide/Halide.git && \
#     cd Halide && \
#     # git checkout 970f749 && \
#     # git checkout d395f6932 && \
#     git checkout 226a9f7ea && \
#     mkdir build && cd build && \
#     cmake \
#       -DLLVM_DIR=/usr/local/share/llvm/cmake \
#       -DCMAKE_BUILD_TYPE=Release \
#       -DWITH_NO_RUNTIME=ON \
#       -DWITH_APPS=OFF \
#       -DWITH_TESTS=OFF \
#       -DWITH_TUTORIALS=OFF \
#       -DWITH_UTILS=OFF \
#       -DWARNINGS_AS_ERRORS=OFF \
#       -DLLVM_VERSION=37 \
#       .. && \
#     # cmake -DLLVM_DIR=/usr/local/share/llvm/cmake \
#     #   -DCMAKE_BUILD_TYPE=Release \
#     #   -DWITH_TESTS=OFF \
#     #   -DWITH_TUTORIALS=OFF \
#     #   -DWITH_UTILS=OFF \
#     #   -DWARNINGS_AS_ERRORS=OFF \
#     #   -DLLVM_VERSION=37 \
#     #   .. && \
#     make -j$(nproc) && \
#     make install && \
#     cd / && rm -rf /halide

# Copy the project code
WORKDIR /workspaces
COPY . /workspaces

# Stage 2: Build renderer
WORKDIR /workspaces/surround360_render
RUN cd /workspaces/surround360_render && \
  cmake -DCMAKE_BUILD_TYPE=Release . && \
  make -j $(nproc)

# Stage 3: Build viewer

# install flycapture
# Install dependencies for FlyCapture
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    libgtkmm-2.4-1v5 \
    libglademm-2.4-1v5 \
    libgtkmm-2.4-dev \
    libglademm-2.4-dev \
    libgtkglextmm-x11-1.2-dev \
    expect \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Create a dummy sudo script
RUN echo -e '#!/bin/sh\n"$@"' > /usr/local/bin/sudo && \
  chmod +x /usr/local/bin/sudo

# Copy the FlyCapture package and expect script into the container
WORKDIR  /workspaces/surround360_camera_ctl_ui/flycapture
RUN  cd /workspaces/surround360_camera_ctl_ui/flycapture && \
  tar -xvzf ./flycapture2-2.13.3.31-amd64-pkg_Ubuntu16.04.tgz && \
  chmod +x ./install_flycaptureFP.sh && \
  cp ./install_flycaptureFP.sh ./flycapture2-2.13.3.31-amd64/ && \
  cd ./flycapture2-2.13.3.31-amd64 && \
  # yes | ./install_flycapture.sh && \
  ./install_flycaptureFP.sh && \
  cd /workspaces/surround360_camera_ctl_ui/ && \
  rm -rf ./flycapture/flycapture2-2.13.3.31-amd64/

WORKDIR /
RUN cd /workspaces/surround360_camera_ctl_ui && \
  cmake -DCMAKE_BUILD_TYPE=Release . && \
  make -j $(nproc)

# Define the entry point
CMD ["/bin/bash"]
