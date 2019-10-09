#!/bin/bash

# Use gunzip -r ./Log/ to unzip all ziped .gz files

echo "[i]: Compressing logs Started"
find ./Log -mtime +PLACEHOLDERFORARCHIVETIMELOGSCOMMPRESS -exec gzip -v {} +
echo "[i]: Compressing logs End"
echo "[i]: Deleting logs Started"
find ./Log -mtime +PLACEHOLDERFORARCHIVETIMELOGSDELETE -exec gzip -v {} +
echo "[i]: Deleting logs End"
