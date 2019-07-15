#!/bin/bash

find ./Archive/ -name "*.conf" -mtime 1 -exec head -n 100 {} + | grep -e '#config-version=' -e 'set hostname' | tr -d " \t" | sed '/\\/d' | sed '/\*/d' | sed 's/\<sethostname\>//g' | sed 's|["?]||g' | sed 's/#config-version=//' | sed 's/:opmode.*//g'
