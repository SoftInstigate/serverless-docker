FROM softinstigate/maven-aws:3.0.0

LABEL maintainer="SoftInstigate <info@softinstigate.com>"

ARG RELEASE

# Install node.js and yarn
RUN rm -rf /var/lib/apt/lists/*
RUN curl -sL https://deb.nodesource.com/setup_12.x > node_install.sh
RUN chmod +x ./node_install.sh
RUN ./node_install.sh
RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils nodejs yarn groff rsync

# Install serverless cli
RUN yarn global add serverless@${RELEASE}

COPY bin/startup.sh .
RUN "./startup.sh"

ENTRYPOINT [ "serverless" ]
