#!/bin/bash

# Use gunzip -r ./Archive/ to unzip all ziped .gz files

echo "[i]: Compressing configs Started"
find ./Archive -name "*.conf" -mtime +PLACEHOLDERFORARCHIVETIMEARCHIVECOMMPRESS -exec gzip -v {} +
echo "[i]: Compressing configs End"
echo "[i]: Deleting configs Started"
find ./Archive -name "*.conf.gz" -mtime +PLACEHOLDERFORARCHIVETIMEARCHIVEDELETE -exec rm -v {} +
echo "[i]: Deleting configs End"
echo "[i]: Deleting empty folders Started"
find ./Archive -type d -empty -exec rm -rvf {} +
echo "[i]: Deleting empty folders End"
