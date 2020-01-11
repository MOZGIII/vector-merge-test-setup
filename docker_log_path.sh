#!/bin/bash
set -euo pipefail

CONTAINER_NAME="${1:-"vector-merge-test-setup_log_1"}"

DOCKER_ROOT_DIR="$(docker info -f '{{.DockerRootDir}}')"
CONTAINER_ID="$(docker inspect "$CONTAINER_NAME" -f '{{.ID}}')"

LOGFILE="$DOCKER_ROOT_DIR/containers/$CONTAINER_ID/$CONTAINER_ID-json.log"

echo "$LOGFILE"
