#!/bin/bash

user="dell"
passwd="XXXXXXPASSWORDXXXXXX"

echo "[i]: Started Backup of Configs : DELL (nXXXX.sh)"
for device in `cat ./Devices/DELL/DELL-Nxxxx.txt | egrep -v "^\s*(#|$)" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"`
 do
  echo -e "[i]: Host --> $device"
  sshpass -p "$passwd" \ssh -v $user@$device <<EOF > BackupConfigDELLTEMP1 
   enable
   show running-config 
   exit
   exit
   exit
EOF
name=`cat BackupConfigDELLTEMP1 | grep hostname | sed 's|["?]||g' | sed 's/hostname //' |  tr -dc '[:print:]'`
cat BackupConfigDELLTEMP1 | grep -v "$name>" | grep -v "$name#"> BackupConfigDELL
mkdir -v Archive/$name
date=`date +"%H-%M_%d-%m-%Y"`
mv -v BackupConfigDELL ./Archive/$name/$name-$date.conf
rm BackupConfigDELLTEMP1
if [ -f ./Archive/$name/$name-$date.conf ]
 then
  echo "[i]: File $name-$date.conf found!"
  echo "[i]: $device backup succeeded"
 else
  echo "[i]: File $name-$date.conf not found!"
  echo "[i]: $device backup failed"
fi
done
