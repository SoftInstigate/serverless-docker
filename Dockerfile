FROM softinstigate/maven-aws

LABEL maintainer="SoftInstigate <info@softinstigate.com>"

ARG RELEASE

# Install node.js and yarn
RUN curl -sL https://deb.nodesource.com/setup_8.x > node_install.sh
RUN chmod +x ./node_install.sh
RUN ./node_install.sh
RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y apt-utils nodejs yarn

# Install serverless cli
RUN yarn global add serverless@$RELEASE

RUN echo "================================================="
RUN echo "maven version: $(mvn --version)"
RUN echo "awscli version: $(aws --version)"
RUN echo "ecs-cli version: $(ecs-cli --version)"
RUN echo "node version: $(node --version)"
RUN echo "yarn version: $(yarn --version)"
RUN echo "serverless version: $(serverless --version)"
RUN echo "================================================="

ENTRYPOINT [ "serverless" ]
