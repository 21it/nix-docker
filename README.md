# nix-docker

```shell
#
# NOTE : docker buildx requires some binary deps:
# sudo apt-get install -y qemu-user-static binfmt-support
#

./release.sh alpine x86_64 2.3.15
./release.sh alpine arm64 2.3.15

docker push heathmont/nix-alpine-x86_64:2.3.15
docker push heathmont/nix-alpine-arm64:2.3.15
```
