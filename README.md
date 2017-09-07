# serverless-docker #

[![Build Status](https://travis-ci.org/SoftInstigate/serverless-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/serverless-docker)

A docker image for running [serverless](https://serverless.com) commands.

This can be useful for building and deploying serverless stacks from CI environments.

## Base image ##

[softinstigate/maven-aws](https://hub.docker.com/r/softinstigate/maven-aws/)

Included packages from base image:

 - [aws-cli](https://github.com/aws/aws-cli).
 - [ecs-cli](https://github.com/aws/amazon-ecs-cli)

## Additional packages ##

 * Nodejs 6.x
 * Serverless cli
