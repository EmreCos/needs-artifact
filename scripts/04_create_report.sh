#!/usr/bin/env bash

echo "Erstelle Report"

mkdir -p output

if [ ! -f "output/anzahl.txt" ]; then
  bash scripts/03_count_names.sh
fi

anzahl=$(cat output/anzahl.txt)

cat > output/report.txt <<EOF
Report zum Bash Projekt

Anzahl der Namen: $anzahl

Diese Datei wurde automatisch durch ein Shell Skript erstellt.
EOF

cat output/report.txt
