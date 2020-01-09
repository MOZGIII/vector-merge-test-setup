#!/bin/bash
set -euo pipefail

DOCKER_ROOT_DIR="$(docker info -f '{{.DockerRootDir}}')"
LOG_PODUCER_ID="$(docker inspect 'vector-merge-test-setup_log_1' -f '{{.ID}}')"

LOGFILE="$DOCKER_ROOT_DIR/containers/$LOG_PODUCER_ID/$LOG_PODUCER_ID-json.log"

echo "$LOGFILE"
