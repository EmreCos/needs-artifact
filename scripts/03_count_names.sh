#!/usr/bin/env bash

echo "Zähle Namen aus data/namen.txt"

mkdir -p output

anzahl=$(wc -l < data/namen.txt)

echo "Anzahl Namen: $anzahl"
echo "$anzahl" > output/anzahl.txt
