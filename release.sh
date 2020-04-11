#!/bin/bash

set -e


for V in "2.3.3" "2.3.4"; do
  docker build -t "tkachuklabs/nix:$V" -f "./Dockerfile-nix:$V" .
  docker push "tkachuklabs/nix:$V"
done
