#!/bin/bash
if [[ -z $SLS_VERSION ]]; then
    echo "Error: undefined SLS_VERSION environment variable."
    exit 1
fi
docker build --build-arg VERSION="$SLS_VERSION" -t softinstigate/serverless .
docker tag softinstigate/serverless:latest softinstigate/serverless:"$SLS_VERSION"