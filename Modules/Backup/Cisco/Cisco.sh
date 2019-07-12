#!/bin/bash

user=backup

echo "Started Backup of Config's"

for device in `cat ./Devices/Cisco/Cisco-Devices.txt| egrep -v "^\s*(#|$)"` # Will have a look in the file "cisco-devices.txt" for all Cisco devices
 do
  echo -e "Host --> $device"
  if ping -c 3 $device &> /dev/null
   then
    echo "[i]: $device reachable"
    ./sgX00.sh $device
    date=`date +"%H-%M_%d-%m-%Y"`
    if [ -f ./Archive/$name/$name-$date.conf ]
     then
      echo "[i]: File $name-$date.conf found!"
      echo "[i]: Backup status : succeeded"
     else
      echo "[i]: File $name-$date.conf not found!"
      echo "[i]: Backup status : failed"
    fi
   else
     echo "[i]: $device not reachable"
 fi
done
