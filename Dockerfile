FROM softinstigate/maven-aws

MAINTAINER SoftInstigate <info@softinstigate.com>

ARG RELEASE

# Install node.js and yarn
RUN curl -sL https://deb.nodesource.com/setup_6.x > node_install.sh
RUN chmod +x ./node_install.sh
RUN ./node_install.sh
RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y apt-utils nodejs yarn

# Install serverless cli
RUN npm install serverless@$RELEASE -g
