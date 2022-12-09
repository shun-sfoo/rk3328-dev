FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y ca-certificates
RUN sed -i "s@http://.*archive.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
RUN sed -i "s@http://.*security.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python-dev
RUN apt-get install -y gcc-multilib
RUN apt-get install -y g++-multilib
RUN apt-get install -y make
RUN apt-get install -y swig
RUN apt-get install -y bison
RUN apt-get install -y flex
RUN apt-get install -y libssl-dev
RUN apt-get install -y bc
