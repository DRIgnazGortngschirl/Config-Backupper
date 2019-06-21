#!/bin/bash

user=backup

echo "Started Backup of Config's"

for device in `cat ./Devices/Fortinet/Fortinet-Devices.txt | egrep -v "^\s*(#|$)" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"` # Will have a look in the file ./Devices/Fortinet/Fortinet-Devices.txt for Fortinet devices
do
    echo -e "Host found in hostfile --> $device" # info log entry
    scp -v -i ./SSH-Keys/Backup-SSH-Key $user@$device:sys_config ./BackupConfigFortinet # Will copy configs of all devices in ./Devices/Fortinet/Fortinet-Devices.txt and safe it localy as temp name "BackupConfigFortinet"
    name=`pv BackupConfigFortinet | grep -m1 'set hostname' | sed 's|["?]||g' | sed 's/\<set hostname\>//g' | sed 's/ //g' | tr -dc '[:print:]'` # Will search for the host name to create a directory and a file named like the hostname of the network device. 
    mkdir -v Archive/$name # Will create a directory in ./Archive named like the hostname found in the copied config
    mv -v BackupConfigFortinet ./Archive/$name/$name-$(date +"%H-%M_%d-%m-%Y").conf # Will move the copied file to the folder that has been previously created and will rename it with the hostname and time & date (HH-MM_DD-MM-YYYY)
done
