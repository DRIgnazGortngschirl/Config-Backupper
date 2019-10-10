#!/bin/bash

# Use gunzip -r ./Log/ to unzip all ziped .gz files

echo "[i]: Compressing logs Started"
find ./Log -name "log*.txt" -mtime +PLACEHOLDERFORARCHIVETIMELOGSCOMMPRESS -exec gzip -v {} +
echo "[i]: Compressing logs End"
echo "[i]: Deleting logs Started"
find ./Log -name "log*.txt.gz" -mtime +PLACEHOLDERFORARCHIVETIMELOGSDELETE -exec rm -v {} +
echo "[i]: Deleting logs End"
