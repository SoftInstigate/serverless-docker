FROM node:6.10

MAINTAINER SoftInstigate <info@softinstigate.com>

ENV VERSION=1.14

RUN apt-get update && apt-get -y install python-pip python-yaml python-dev
RUN pip install awscli

RUN npm install serverless@$VERSION -g
