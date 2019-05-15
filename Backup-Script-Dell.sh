#  _    _ _   _ _____  ______ _____     _____ ____  _   _  _____ _______ _____  _    _  _____ _______ _____ ____  _   _ 
# | |  | | \ | |  __ \|  ____|  __ \   / ____/ __ \| \ | |/ ____|__   __|  __ \| |  | |/ ____|__   __|_   _/ __ \| \ | |
# | |  | |  \| | |  | | |__  | |__) | | |   | |  | |  \| | (___    | |  | |__) | |  | | |       | |    | || |  | |  \| |
# | |  | | . ` | |  | |  __| |  _  /  | |   | |  | | . ` |\___ \   | |  |  _  /| |  | | |       | |    | || |  | | . ` |
# | |__| | |\  | |__| | |____| | \ \  | |___| |__| | |\  |____) |  | |  | | \ \| |__| | |____   | |   _| || |__| | |\  |
#  \____/|_| \_|_____/|______|_|  \_\  \_____\____/|_| \_|_____/   |_|  |_|  \_\\____/ \_____|  |_|  |_____\____/|_| \_|

# Still working on this. (NOT YET FUNCTIONAL!)

#!/bin/bash

# INSTALLATION

# 1. Create a user "backup" on the network device
# 2. Add SSH Key for Authentification for the user

user=backup
date=`date +%d%m%y`

echo "Started Backup of Config's" &>> Log/log$date.txt

for device in `cat ./Devices/DELL-Devices.txt | egrep -v "^\s*(#|$)"`  # Will have a look in the file "DELL-Devices.txt" for all DELL devices
do
    echo -e "Host found in hostfile \e[35m$device\e[39m"
    ssh-keyscan -H $device >> ~/.ssh/known_hosts
    sshpass -p $passwd1 ssh $user1@$device1 'show running-config' > BackupConfigDELL
    name=`grep -m1 'hostname' BackupConfigDELL | sed 's|["?]||g' | sed 's/\<hostname\>//g' | sed 's/ //g' | tr -dc '[:print:]'`  # Will not work
    mkdir Archiv/$name >> /dev/null
    mv BackupConfigDELL ./Archiv/$name-$(date +"%H:%M-%d.%m.%Y").conf
done
