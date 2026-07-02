#!/usr/bin/env bash

mkdir -p output

name="${NAME:-Teilnehmer}"

echo "Hallo $name"
echo "Dieses Skript wurde manuell über GitHub Actions gestartet."

cat > output/manual_message.txt <<EOF
Hallo $name

Diese Datei wurde durch einen manuellen GitHub Actions Workflow erstellt.
EOF
