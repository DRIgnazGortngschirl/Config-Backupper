#!/bin/bash

find ./Archive/ -name "*.conf" -mtime 0 -exec head -n 100 {} + | grep -e '#config-version=' -e 'set hostname' | tr -d " \t" | sed '/\\/d' | sed '/\*/d' | sed 's/\<sethostname\>//g' | sed 's|["?]||g' | sed 's/#config-version=//' | sed 's/:opmode.*//g' | sed $'s/<br>/\\\n/g' | sed 'N;s/\n/ /' | awk '{ t=$1; $1=$NF; $NF=t; print}' | sort | uniq > ./Devices/Firmware-Versions/Fortinet-Firmware-Versions.txt
cat ./Devices/Firmware-Versions/Firmware-Versions.txt | awk '{ print $2}' | cut -d "-" -f2 | sort | uniq -c | sed  's/^ *//' | sed 's/ / x FortiOS /g' > ./Devices/Firmware-Versions/Fortinet-Firmware-Count.txt
