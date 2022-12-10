FROM ubuntu:18.04

RUN apt-get update && apt-get install -y ca-certificates
RUN sed -i "s@http://.*archive.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list &&  \
    sed -i "s@http://.*security.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
RUN apt-get update && apt-get install -y python-dev python3-dev gcc-multilib g++-multilib make swig bison flex libssl-dev \
                                         bc liblz4-tool unzip git rsync
