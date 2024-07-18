# Use the official CUDA 10.2 base image with Ubuntu 16.04
FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu16.04

# Set non-interactive mode for debconf
ARG DEBIAN_FRONTEND=noninteractive

# Preconfigure the keyboard settings
RUN echo 'keyboard-configuration keyboard-configuration/layout select "English (US)"' | debconf-set-selections
RUN echo 'keyboard-configuration keyboard-configuration/variant select "English (US)"' | debconf-set-selections

# Install basic dependencies using apt-get
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    wget \
    curl \
    ca-certificates \
    libjpeg-dev \
    libpng-dev \
    python3 \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN python3 -m pip install --upgrade pip

# (Optional) Install any Python packages you need
RUN pip install numpy scipy

# Set the working directory
WORKDIR /workspace

# (Optional) Copy your project files into the container
COPY . /workspace

# Define the entry point
CMD ["bash"]
