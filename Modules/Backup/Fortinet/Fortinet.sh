#!/bin/bash

user=backup

echo "Started Backup of Configs : FORTINET"

for device in `cat ./Devices/Fortinet/Fortinet-Devices.txt | egrep -v "^\s*(#|$)" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"`
 do
  echo -e "Host --> $device"
  if ping -c 3 $device &> /dev/null
   then
    echo "[i]: $device reachable"
    scp -v -i ./SSH-Keys/Backup-SSH-Key $user@$device:sys_config ./BackupConfigFortinet
    name=`pv BackupConfigFortinet | grep -m1 'set hostname' | sed 's|["?]||g' | sed 's/\<set hostname\>//g' | sed 's/ //g' | tr -dc '[:print:]'`
    mkdir -v Archive/$name
    date=`date +"%H-%M_%d-%m-%Y"`
    mv -v BackupConfigFortinet ./Archive/$name/$name-$date.conf
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
