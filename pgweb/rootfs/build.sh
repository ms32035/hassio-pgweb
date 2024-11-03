#!/bin/bash

arch=$(uname -m)
tag="v0.16.2"

case $arch in
armv7l)
  docker_arch=linux_arm_v5
  ;;
aarch64)
  docker_arch=linux_arm64
  ;;
x86_64)
  docker_arch=linux_amd64
  ;;
*)
  exit 1
  ;;
esac

wget -q https://github.com/sosedoff/pgweb/releases/download/${tag}/pgweb_${docker_arch}.zip \
-O pgweb.zip && \
unzip pgweb.zip && \
mv pgweb_${docker_arch} /pgweb && \
chmod +x /pgweb && \
rm pgweb.zip
