#!/bin/bash
echo "================================================="
mvn --version
aws --version
ecs-cli --version
echo "node $(node --version)"
echo "yarn $(yarn --version)"
echo "serverless $(serverless --version)"
echo "================================================="
