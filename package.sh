#!/bin/bash

# input variables
APP=${APP:-simpleserver}
TAG=${TAG:-latest}

docker build . -t "${APP}:${TAG}"
