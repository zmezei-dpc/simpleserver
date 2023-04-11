#!/bin/bash

# static values
DOCKER_REGISTRY=repo.example.com

# input values
APP=${APP:-simpleserver}
ENVIRONMENT=${ENVIRONMENT:-dev}
TAG=${TAG:-latest}

# calculated values
NAMESPACE="${APP}-${ENVIRONMENT}"
VALUES="${APP}-values-${ENVIRONMENT}.yaml"

helm upgrade --install --namespace "${NAMESPACE}" --create-namespace -f "${VALUES}" \
  --set-string app.deployment.image="${DOCKER_REGISTRY}/${APP}" \
  --set-string app.deployment.version="${TAG}" \
  "$@" \
  "${APP}" .
