#!/bin/bash
set -e 
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
    docker push softinstigate/serverless:latest;
    docker push softinstigate/serverless:"$RELEASE";
fi