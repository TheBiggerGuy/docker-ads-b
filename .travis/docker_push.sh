#!/bin/bash

set -o errexit
set -o pipefail

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
TAG="${TRAVIS_BRANCH}" docker-compose push "${SUB_IMAGE}"
