#!/usr/bin/env bash

echo "GitHub Actions Bash Beispiel"
echo "Aktueller Ordner:"
pwd

echo ""
echo "Dateien im Projekt:"
find . -maxdepth 3 -type f | sort
