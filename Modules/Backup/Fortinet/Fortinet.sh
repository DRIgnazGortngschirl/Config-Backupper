#!/bin/bash

user=backup

echo "Started Backup of Config's"

for device in `cat ./Devices/Fortinet/Fortinet-Devices.txt | egrep -v "^\s*(#|$)" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"`
do
    echo -e "Host found in hostfile --> $device"
    scp -v -i ./SSH-Keys/Backup-SSH-Key $user@$device:sys_config ./BackupConfigFortinet
    name=`pv BackupConfigFortinet | grep -m1 'set hostname' | sed 's|["?]||g' | sed 's/\<set hostname\>//g' | sed 's/ //g' | tr -dc '[:print:]'`
    mkdir -v Archive/$name
    mv -v BackupConfigFortinet ./Archive/$name/$name-$(date +"%H-%M_%d-%m-%Y").conf
done
