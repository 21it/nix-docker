#!/bin/bash

set -e

BASE_IMAGE="$1"
NIX_VERSION="$2"

docker build -t "tkachuklabs/nix-$BASE_IMAGE:$NIX_VERSION" -f "./Dockerfile-nix-$BASE_IMAGE:$NIX_VERSION" .
#docker push "tkachuklabs/nix-$BASE_IMAGE:$NIX_VERSION"
