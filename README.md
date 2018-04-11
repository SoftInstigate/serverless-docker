# serverless-docker #

[![Build Status](https://travis-ci.org/SoftInstigate/serverless-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/serverless-docker)

A [docker image](https://hub.docker.com/r/softinstigate/serverless/) for running [serverless](https://serverless.com) commands.

This can be useful for building and deploying serverless stacks from CI environments.

The `RELEASE` variable exported in [.travis.yml](.travis.yml) contains the [serverless release](https://github.com/serverless/serverless/releases) to be built.

## Base image ##

[softinstigate/maven-aws](https://hub.docker.com/r/softinstigate/maven-aws/)

The base image is from the [maven](https://hub.docker.com/_/maven/) one, so it allows to also build serverless projects for **Java** .

Included packages from base image:

- [aws-cli](https://github.com/aws/aws-cli).
- [ecs-cli](https://github.com/aws/amazon-ecs-cli)

## Additional packages ##

- Nodejs 6.x
- Serverless cli
