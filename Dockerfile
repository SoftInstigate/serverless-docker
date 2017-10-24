FROM softinstigate/maven-aws

MAINTAINER SoftInstigate <info@softinstigate.com>

ENV VERSION=1.23

# Install node.js
RUN curl -sL https://deb.nodesource.com/setup_6.x > node_install.sh
RUN chmod +x ./node_install.sh
RUN ./node_install.sh
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y nodejs

# Install serverless cli
RUN npm install serverless@$VERSION -g
