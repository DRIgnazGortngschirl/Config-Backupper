#!/bin/bash

user=backup

echo "[i]: Started Backup of Configs : CISCO"

for device in `cat ./Devices/Cisco/Cisco-Devices.txt | egrep -v "^\s*(#|$)" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"`
 do
  echo -e "[i]: Host --> $device"
  if ping -c 3 $device &> /dev/null
   then
    echo "[i]: $device reachable"
    ./sgX00.sh $device
    name=`cat BackupConfigCisco | grep hostname | sed 's|["?]||g' | sed 's/hostname //'`
    mkdir -v Archive/$name
    date=`date +"%H-%M_%d-%m-%Y"`
    mv -v BackupConfigCisco ./Archive/$name/$name-$date.conf
    if [ -f ./Archive/$name/$name-$date.conf ]
     then
      echo "[i]: File $name-$date.conf found!"
      echo "[i]: $device backup succeeded"
     else
      echo "[i]: File $name-$date.conf not found!"
      echo "[i]: $device backup failed"
    fi
   else
     echo "[i]: $device not reachable"
 fi
done
