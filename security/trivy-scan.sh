#!/usr/bin/env bash
set -euo pipefail
IMAGE=${1:-multicloud-app:latest}

if ! command -v trivy >/dev/null 2>&1; then
  echo "Trivy not found. Install from https://aquasecurity.github.io/trivy/"
  exit 0
fi

trivy image --format table --severity HIGH,CRITICAL "$IMAGE"
