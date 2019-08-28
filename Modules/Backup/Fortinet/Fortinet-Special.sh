#!/bin/bash

# Repleace the <PORT> with the port number you need e.g. 1022.
# Repleace the <IP> of the device to get the backup from.
# Repleace the <USER> with the user that will get used to get the backup.
# <HOSTNAME> or can be used for any note/comment ...

echo "[i]: Started Backup of Configs : FORTINET (SPECIAL)"

# mm-vie-fw-01 --> 10.0.4.20
if ping -c 3 <IP> &> /dev/null
 then
  echo "[i]: <IP> reachable"
  scp -P <PORT> -v -i ./SSH-Keys/Backup-SSH-Key <USER>@<IP>:sys_config ./BackupConfigFortinet
  name=$(grep -m1 'set hostname' ./BackupConfigFortinet | sed 's|["?]||g' | sed 's/\<set hostname\>//g' | sed 's/ //g' | tr -dc '[:print:]')
  if [ -z "$name" ]
   then
    echo "[i]: $device Name not found"
   else
    echo "[i]: $device Name found $name"
    mkdir -v ./Archive/$name
    date=$(date +"%H-%M_%d-%m-%Y")
    mv -v ./BackupConfigFortinet ./Archive/$name/$name-$date.conf
     if [ -f ./Archive/$name/$name-$date.conf ]
      then
       echo "[i]: File $name-$date.conf found"
       echo "[i]: $device backup succeeded"
      else
       echo "[i]: File $name-$date.conf not found"
       echo "[i]: $device backup failed"
     fi
   fi
  else
   echo "[i]: $device not reachable"
 fi
done
