FROM	ubuntu:14.04
MAINTAINER Simon Tweed

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install python
RUN apt-get -y install git

# # Install node
RUN curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

RUN npm install -g pm2

RUN mkdir /app
RUN cd /app && git clone https://github.com/sjt88/restify-test.git
RUN npm install /app/restify-test/app

CMD pm2 start /app/restify-test/app/index.js && pm2 logs all