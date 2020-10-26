# serverless #

[![Build Status](https://travis-ci.org/SoftInstigate/serverless-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/serverless-docker)

A [docker image](https://hub.docker.com/r/softinstigate/serverless/) for running [serverless](https://serverless.com) commands.

This can be useful for building and deploying serverless stacks from CI environments.

The `RELEASE` global variable in [.travis.yml](.travis.yml) contains the [serverless release](https://github.com/serverless/serverless/releases) to be built.

## Example ##

```
$ docker pull softinstigate/serverless
$ docker run --rm softinstigate/serverless --version
```

## Base image ##

[softinstigate/maven-aws](https://hub.docker.com/r/softinstigate/maven-aws/)

The base image is from the [maven](https://hub.docker.com/_/maven/) one, so it allows to also build serverless projects for **Java** .

Included packages from base image:

- [aws-cli](https://github.com/aws/aws-cli).
- [ecs-cli](https://github.com/aws/amazon-ecs-cli)

## Check the installed tools

```bash
docker run -it --rm --entrypoint="./startup.sh" softinstigate/serverless

=================================================
Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
Maven home: /usr/share/maven
Java version: 11.0.9, vendor: Oracle Corporation, runtime: /usr/local/openjdk-11
Default locale: en, platform encoding: UTF-8
OS name: "linux", version: "4.19.76-linuxkit", arch: "amd64", family: "unix"
aws-cli/2.0.59 Python/3.7.3 Linux/4.19.76-linuxkit exe/x86_64.debian.10
ecs-cli version 1.20.0 (7547c45)
node v12.19.0
yarn 1.22.5
serverless Framework Core: 2.8.0
Plugin: 4.1.1
SDK: 2.3.2
Components: 3.2.7
=================================================
```

## Additional packages ##

- Nodejs 12 LTS
- Serverless cli 2.x
