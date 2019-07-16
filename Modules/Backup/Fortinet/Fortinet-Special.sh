#!/bin/bash

echo "Started Backup of Config's (Special)"

# Repleace the <PORT> with the port number you need e.g. 1022.
# Repleace the <IP> of the device to get the backup from.
# Repleace the <USER> with the user that will get used to get the backup.

# <HOSTNAME> or can be used for any note...
if ping -c 3 <IP> &> /dev/null
 then
  echo "[i]: <IP> reachable"
  scp -P <PORT> -v -i ./SSH-Keys/Backup-SSH-Key <USER>@<IP>:sys_config ./BackupConfigFortinet
  name=`pv BackupConfigFortinet | grep -m1 'set hostname' | sed 's|["?]||g' | sed 's/\<set hostname\>//g' | sed 's/ //g' | tr -dc '[:print:]'`
  mkdir -v Archive/$name
  date=`date +"%H-%M_%d-%m-%Y"`
  mv -v BackupConfigFortinet ./Archive/$name/$name-$date.conf
  if [ -f ./Archive/$name/$name-$date.conf ]
   then
      echo "[i]: File $name-$date.conf found!"
      echo "[i]: <IP> backup succeeded"
     else
      echo "[i]: File $name-$date.conf not found!"
      echo "[i]: <IP> backup failed"
  fi
  else
   echo "[i]: <IP> not reachable"
fi
done
