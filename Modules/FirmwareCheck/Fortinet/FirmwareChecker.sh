#!/bin/bash

find ./Archive/ -name "*.conf" -mtime 0 -exec head -n 100 {} + | grep -e '#config-version=' -e 'set hostname' | tr -d " \t" | sed '/\\/d' | sed '/\*/d' | sed 's/\<sethostname\>//g' | sed 's|["?]||g' | sed 's/#config-version=//' | sed 's/:opmode.*//g' | sed $'s/<br>/\\\n/g' | sed 'N;s/\n/ /' | awk '{ t=$1; $1=$NF; $NF=t; print}' | sort | uniq > ./Devices/Firmware-Versions/Fortinet/Firmware-Versions.txt
awk '{ print $2}' ./Devices/Firmware-Versions/Fortinet/Firmware-Versions.txt | cut -d "-" -f2 | sort | uniq -c | sed  's/^ *//' | sed 's/ / x FortiOS /g' > ./Devices/Firmware-Versions/Fortinet/Firmware-Count.txt


### Display on a website ###  

## Fortinet 
# Can be used to create a "okay" looking list of ./Devices/Firmware-Versions/Fortinet/Firmware-Versions.txt to display it e.g. on a website. Will be placed in ./Devices/Firmware-Versions/Fortinet/
# sed 's/ /\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;/g' ./Devices/Firmware-Versions/Fortinet/Firmware-Versions.txt | sed ':a;N;$!ba;s/\n/<br>/g' > ./Devices/Firmware-Versions/Fortinet/Firmware-Versions.html 

# Can be used to create a list of ./Devices/Firmware-Versions/Fortinet/Firmware-Count.txt to display it e.g. on a website. Will be placed in ./Devices/Firmware-Versions/Fortinet/
#  awk '{ print $2}' ./Devices/Firmware-Versions/Fortinet/Firmware-Versions.txt | cut -d "-" -f2 | sort | uniq -c | sed  's/^ *//' | sed 's/ / x FortiOS /g' | sed ':a;N;$!ba;s/\n/<br>/g' > ./Devices/Firmware-Versions/Fortinet/Firmware-Count.html
