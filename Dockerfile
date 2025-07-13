# syntax=docker/dockerfile:1

# Base image
FROM ubuntu:22.04

# Non-interactive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies
RUN apt update && \
    apt install -y software-properties-common curl git && \
    add-apt-repository ppa:deadsnakes/ppa -y && \
    apt update && \
    apt install -y python3.10 python3.10-distutils python3-pip

# Set python3.10 as default
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1

# Install Python packages
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install \
    ray \
    qiskit \
    qiskit-aer \
    cirq \
    scipy \
    scikit-image \
    numpy \
    pandas \
    nibabel \
    pillow

# Set path and export it
ENV PATH="/root/.local/bin:$PATH"
RUN echo 'export PATH="/root/.local/bin:$PATH"' >> /root/.bashrc

# Show Ray version
RUN ray --version

# Copy startup script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Default command: user will override IP and port via CMD
ENTRYPOINT ["/entrypoint.sh"]
