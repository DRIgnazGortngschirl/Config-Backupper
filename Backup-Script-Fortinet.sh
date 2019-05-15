#!/bin/bash

# INSTALLATION

# 1. Create a user "backup" on the network device
# 2. Add SSH Key for Authentification for the user(No Password!!!)

user=backup
date=`date +%d%m%y`

echo "Started Backup of Config's" &>> Log/Fortinet/log$date.txt

for device in `cat ./Devices/Fortinet-Devices.txt | egrep -v "^\s*(#|$)" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"` # Will have a look in the file "Fortinet-Devices.txt" for all fortinet devices
do
    echo -e "Host found in hostfile \e[35m$device\e[39m" &>> Log/Fortinet/log$date.txt
    scp -v -i ./SSH-Keys/Backup-SSH-Key $user@$device:sys_config ./BackupConfigFortinet &>> Log/Fortinet/log$date.txt # Will copy to all devices in "Fortinet-Devices.txt" and copy it secure localy
    name=`pv BackupConfigFortinet | grep -m1 'set hostname' | sed 's|["?]||g' | sed 's/\<set hostname\>//g' | sed 's/ //g' | tr -dc '[:print:]'` &>> Log/Fortinet/log$date.txt # Will search for the host name to set create a directory and a file named like the hostname of the network device 
    mkdir -v Archiv/$name &>> Log/Fortinet/log$date.txt
    mv -v BackupConfigFortinet ./Archiv/$name/$name-$(date +"%H_%M-%d_%m_%Y").conf &>> Log/Fortinet/log$date.txt # Will move the copied file to the correct folder and will also rename it with the hostname
done
