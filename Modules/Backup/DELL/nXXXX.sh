#!/bin/bash

user="dell"
passwd="XXXXXXPASSWORDXXXXXX"

echo "[i]: Started Backup of Configs : DELL (nXXXX.sh)"
for device in $(egrep -v "^\s*(#|$)" ./Devices/DELL/nXXXX.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
 do
  echo -e "[i]: Host --> $device"
  if ping -c 3 $device &> /dev/null
   then
     echo "[i]: $device reachable"
     sshpass -p "$passwd" \ssh -v $user@$device <<EOF > BackupConfigDELLTEMPnXXXX
     enable
     show running-config
     exit
     exit
     exit
EOF
   name=$(grep "hostname" BackupConfigDELLTEMPnXXXX | sed 's|["?]||g' | sed 's/hostname //' |  tr -dc '[:print:]')
   grep -v "$name>" BackupConfigDELLTEMPnXXXX | grep -v "$name#"> BackupConfigDELLnXXXX
   mkdir -v Archive/$name
   date=$(date +"%H-%M_%d-%m-%Y")
   mv -v BackupConfigDELLnXXXX ./Archive/$name/$name-$date.conf
   if [ -f ./Archive/$name/$name-$date.conf ]
    then
     echo "[i]: File $name-$date.conf found!"
     echo "[i]: $device backup succeeded"
    else
     echo "[i]: File $name-$date.conf not found!"
     echo "[i]: $device backup failed"
   fi
 fi
   rm -v BackupConfigDELLTEMPnXXXX
     else
    echo "[i]: $device not reachable"
done
