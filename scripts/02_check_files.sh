#!/usr/bin/env bash

echo "Prüfe wichtige Dateien"

if [ ! -f "README.md" ]; then
  echo "README.md fehlt"
  exit 1
fi

if [ ! -f "data/namen.txt" ]; then
  echo "data/namen.txt fehlt"
  exit 1
fi

if [ ! -f "scripts/03_count_names.sh" ]; then
  echo "scripts/03_count_names.sh fehlt"
  exit 1
fi

echo "Alle wichtigen Dateien sind vorhanden"
