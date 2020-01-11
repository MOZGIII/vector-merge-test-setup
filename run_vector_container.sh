#!/bin/bash
exec docker run \
  --rm \
  -it \
  --net host \
  --volume '/var/run/docker.sock:/var/run/docker.sock' \
  --volume "$(pwd)/vector:/etc/vector" \
  'timberio/vector:latest-alpine' \
  -c "/etc/${1:-"vector/docker.toml"}"
