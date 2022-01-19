# nix-docker

Docker buildx requires some binary deps. Install them if needed:

```shell
sudo apt-get install -y qemu-user-static binfmt-support
```

Then you can build images locally, play around with them, and push to dockerhub:

```shell
./release.sh alpine x86_64 2.3.15
./release.sh alpine arm64 2.3.15
docker push heathmont/nix:alpine-x86_64-2.3.15
docker push heathmont/nix:alpine-arm64-2.3.15
```

Or you can just build and push everything with the command:

```shell
./release-publish-all.sh
```
