FROM ubuntu:lucid
MAINTAINER Alex Lee <lu.lee05@gmail.com>

RUN apt-get -q update

# Install packages that JAE has provided
RUN apt-get -q -y install curl wget gcc g++ make unzip bzip2 automake autoconf

# Install packages need for compiling php runtime (JAE doesn't provides)
RUN apt-get -q -y install libpcrecpp0 libpcre3-dev zlib1g-dev

ADD build build 
CMD ./build
