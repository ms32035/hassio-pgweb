#!/bin/bash

arch=$(uname -m)
tag="v0.11.6"

case $arch in
armv7l)
  docker_arch=linux_arm_v5
  ;;
x86_64)
  docker_arch=linux_amd64
  ;;
*)
  exit 1
  ;;
esac

wget https://github.com/sosedoff/pgweb/releases/download/${tag}/pgweb_${docker_arch}.zip \
-O pgweb.zip && \
unzip pgweb.zip && \
mv pgweb_${docker_arch} /pgweb && \
chmod +x /pgweb && \
rm pgweb.zip
