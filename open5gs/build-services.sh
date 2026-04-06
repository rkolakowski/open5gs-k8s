#!/usr/bin/env bash

### ./build-services.sh . | kubectl apply -f -

set -e

KUSTOMIZE_DIR="${1:-.}"

kustomize build "$KUSTOMIZE_DIR" \
  | yq 'select(.kind == "Service")'