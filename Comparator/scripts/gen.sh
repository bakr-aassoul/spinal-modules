#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

docker run --rm -it \
  -u $(id -u):$(id -g) -e HOME=/tmp \
  -v "$PWD":/workspace -w /workspace \
  spinalhdl:dev \
  sbt "runMain ComparatorVerilog" "runMain ComparatorVhdl"

echo "✅ HDL erzeugt unter generated/{verilog,vhdl}/"
