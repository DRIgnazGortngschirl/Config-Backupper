#!/bin/bash

user="cisco"
passwd="XXXXXXPASSWORDXXXXXX"

echo "[i]: Started Backup of Configs : Cisco (n3XXX.sh)"

for device in $(egrep -v "^\s*(#|$)" ./Devices/Cisco/n3xxx-txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
 do
  echo -e "[i]: Host --> $device"
  if ping -c 3 $device &> /dev/null
   then
    echo "[i]: $device reachable"
    sshpass -p "$passwd" ssh -tt $user@$device <<EOF > BackupConfigCiscoTEMPn3XXX
    terminal length 0
    show startup-config
    exit
EOF
    name=$(grep hostname ./BackupConfigCiscoTEMPn3XXX | sed 's|["?]||g' | sed 's/hostname //' |  tr -dc '[:print:]')
    grep -v "$name#" BackupConfigCiscoTEMPn3XXX | sed 's/terminal length 0//g' | sed 's/show startup-config//g' | sed 's/exit//g' > BackupConfigCiscon3XXX
    if [ -z "$name" ]
     then
      echo "[i]: $device Name not found"
     else
      echo "[i]: $device Name found $name"
      mkdir -v ./Archive/$name
      date=$(date +"%H-%M_%d-%m-%Y")
      mv -v ./BackupConfigCiscon3XXX ./Archive/$name/$name-$date.conf
      if [ -f ./Archive/$name/$name-$date.conf ]
       then
        echo "[i]: File $name-$date.conf found"
        echo "[i]: $device backup succeeded"
       else
        echo "[i]: File $name-$date.conf not found"
        echo "[i]: $device backup failed"
      fi
    fi
    rm BackupConfigCiscoTEMPn3XXX
    else
    echo "[i]: $device not reachable"
 fi
done
