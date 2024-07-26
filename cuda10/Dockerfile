# Use the official Ubuntu 16.04 base image
FROM ubuntu:16.04

# Set non-interactive mode for debconf
ARG DEBIAN_FRONTEND=noninteractive

# Install the required starting packages
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    keyboard-configuration \
    debconf-utils \
    software-properties-common \
    binutils-dev \
    build-essential \
    git \
    wget \
    curl \
    python \
    python-dev \
    python-pip \
    python-numpy \
    libgflags2v5 \
    libgflags-dev \
    libgoogle-glog-dev \
    openssh-server \
    apt-transport-https \
    ca-certificates \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Preconfigure the keyboard settings
# SHELL ["/bin/bash", "-o", "pipefail"]
# RUN echo 'keyboard-configuration keyboard-configuration/layout select "English (US)"' | debconf-set-selections
# RUN echo 'keyboard-configuration keyboard-configuration/variant select "English (US)"' | debconf-set-selections


# Install Python and pip
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN python3 -m pip install --upgrade pip

# Add NVIDIA package repositories
RUN wget --progress=dot:giga https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_10.2.89-1_amd64.deb && \
    dpkg -i cuda-repo-ubuntu1604_10.2.89-1_amd64.deb && \
    apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub && \
    apt-get update && apt-get install -y --no-install-recommends --allow-unauthenticated cuda-10-2 && \
    rm cuda-repo-ubuntu1604_10.2.89-1_amd64.deb && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables for CUDA
ENV PATH /usr/local/cuda-10.2/bin${PATH:+:${PATH}}
ENV LD_LIBRARY_PATH /usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Copy and install cuDNN packages
COPY libcudnn7_7.6.5.32-1+cuda10.2_amd64.deb /tmp/
COPY libcudnn7-dev_7.6.5.32-1+cuda10.2_amd64.deb /tmp/
RUN dpkg -i /tmp/libcudnn7_7.6.5.32-1+cuda10.2_amd64.deb && \
    dpkg -i /tmp/libcudnn7-dev_7.6.5.32-1+cuda10.2_amd64.deb && \
    rm /tmp/libcudnn7_7.6.5.32-1+cuda10.2_amd64.deb /tmp/libcudnn7-dev_7.6.5.32-1+cuda10.2_amd64.deb

# Ensure no pre-existing NVIDIA binaries
RUN rm -f /usr/bin/nvidia-smi /usr/bin/nvidia-debugdump /usr/bin/nvidia-persistenced /usr/bin/nvidia-cuda-mps-control /usr/bin/nvidia-cuda-mps-server

# Set the working directory
WORKDIR /workspace

# Define the entry point
CMD ["/bin/bash"]