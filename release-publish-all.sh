#!/bin/sh

set -e

for BASE_IMAGE in alpine ubuntu; do
  for PLATFORM in arm64 x86_64; do
    for NIX_VERSION in "2.3.15"; do
      ./release.sh "$BASE_IMAGE" "$PLATFORM" "$NIX_VERSION"
      docker push "heathmont/nix:$BASE_IMAGE-$PLATFORM-$NIX_VERSION"
    done
  done
done
