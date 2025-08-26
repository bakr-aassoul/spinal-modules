#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

docker run --rm -it \
  -u $(id -u):$(id -g) -e HOME=/tmp \
  -v "$PWD":/workspace -w /workspace \
  spinalhdl:dev \
  sbt "Test / runMain ClockDividerSim"

echo "✅ Taktteiler: Simulation abgeschlossen. VCD unter simWorkspace/ClockDivider/"
