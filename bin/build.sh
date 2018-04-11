#!/bin/bash
if [[ -z $RELEASE ]]; then
    echo "Error: undefined RELEASE environment variable."
    exit 1
fi
docker build --build-arg RELEASE="$RELEASE" -t softinstigate/serverless .
docker tag softinstigate/serverless:latest softinstigate/serverless:"$RELEASE"