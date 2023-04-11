#!/bin/bash

# input variables
APP=${APP:-simpleserver}
TAG=${TAG:-latest}
PORT=${PORT:-8080}

docker run -it -p "${PORT}:${PORT}" "${APP}:${TAG}"
