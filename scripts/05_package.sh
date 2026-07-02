#!/usr/bin/env bash

echo "Erstelle Paket"

mkdir -p output

if [ ! -f "output/report.txt" ]; then
  bash scripts/04_create_report.sh
fi

tar -czf output/projekt_paket.tar.gz README.md data scripts output/report.txt

echo "Paket erstellt: output/projekt_paket.tar.gz"
