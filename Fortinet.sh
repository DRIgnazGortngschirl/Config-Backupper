#!/bin/bash

# INSTALLATION

# 1. Create a user "backup" on the network device
# 2. Add SSH Key for Authentification for the user(No Password!!!)

user=backup

echo "Started Backup of Config's"

for device in `cat ./Devices/Fortinet/Fortinet-Devices.txt | egrep -v "^\s*(#|$)" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"` # Will have a look in the file "Fortinet-Devices.txt" for all fortinet devices
do
    echo -e "Host found in hostfile --> $device"
    scp -v -i ./SSH-Keys/Backup-SSH-Key $user@$device:sys_config ./BackupConfigFortinet # Will copy to all devices in "Fortinet-Devices.txt" and copy it secure localy
    name=`pv BackupConfigFortinet | grep -m1 'set hostname' | sed 's|["?]||g' | sed 's/\<set hostname\>//g' | sed 's/ //g' | tr -dc '[:print:]'` # Will search for the host name to set create a directory and a file named like the hostname of the network device 
    mkdir -v Archive/$name
    mv -v BackupConfigFortinet ./Archive/$name/$name-$(date +"%H-%M_%d-%m-%Y").conf # Will move the copied file to the correct folder and will also rename it with the hostname
done
