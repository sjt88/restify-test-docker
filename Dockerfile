FROM	ubuntu:14.04
MAINTAINER Simon Tweed

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install python
RUN apt-get -y install git

# # Install node
RUN curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN which nodejs
