#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

rm -rf tmp_gen
mkdir -p tmp_gen/verilog tmp_gen/vhdl

docker run --rm -it \
  -u $(id -u):$(id -g) -e HOME=/tmp \
  -v "$PWD":/workspace -w /workspace \
  spinalhdl:dev \
  sbt "set targetDirectory := file(\"tmp_gen/verilog\"); runMain ComparatorVerilog" \
      "set targetDirectory := file(\"tmp_gen/vhdl\"); runMain ComparatorVhdl"

diff -ru generated tmp_gen || { echo "❌ Unterschiede gefunden!"; exit 1; }

echo "✅ Verilog/VHDL stimmt mit committed Dateien überein."
