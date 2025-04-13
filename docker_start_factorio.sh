#!/bin/bash

sudo docker run -d \
  -p 34197:34197/udp \
  -p 27015:27015/tcp \
  -v ~/repos/github/docker_files/factorio:/factorio \
  --name factorio \
  --restart=unless-stopped \
  factoriotools/factorio
