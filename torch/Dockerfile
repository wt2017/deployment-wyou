FROM localhost/cudnn:12.8.1-ubuntu2404-devel

RUN apt update
RUN apt install -y software-properties-common
RUN apt install -y \
    git \
    pip \
    cmake \
    ninja-build \
    python3.12-venv

WORKDIR /home/wyou/projects
RUN mkdir -p /home/wyou/projects/pytorch-fork
WORKDIR /home/wyou/projects/pytorch-fork
COPY ./pytorch-fork .
WORKDIR /home/wyou/projects/pytorch-fork

RUN python3 -m venv /venv && \
    /venv/bin/pip install --no-cache-dir --retries 5 --timeout 100 -r requirements.txt
