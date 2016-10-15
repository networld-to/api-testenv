FROM ubuntu:xenial
MAINTAINER Alex Oberhauser, alex@cambridge-blockchain.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -qq -y python-software-properties curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | /bin/bash -
RUN apt-get install -qq -y nodejs
RUN apt-get install -qq -y libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

RUN curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.3.1"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

