#!/bin/bash

set -e

BASE_IMAGE="$1"
PLATFORM="$2"
NIX_VERSION="$3"

docker buildx build -t "heathmont/nix-$BASE_IMAGE-$PLATFORM:$NIX_VERSION" -f "./Dockerfile-nix-$BASE_IMAGE:$NIX_VERSION" --platform "linux/$PLATFORM" .
