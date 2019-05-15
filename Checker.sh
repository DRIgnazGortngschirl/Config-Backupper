#!/bin/bash
date=`date +%d%m%y`
fortinethostfilecount=`egrep -v "^\s*(#|$)" ./Devices/Fortinet-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
hphostfilecount=`egrep -v "^\s*(#|$)" ./Devices/HP-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
ciscohostfilecount=`egrep -v "^\s*(#|$)" ./Devices/Cisco-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
dellhostfilecount=`egrep -v "^\s*(#|$)" ./Devices/DELL-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
dirsinachriv=`find ./Archiv -maxdepth 1 -type d | wc -l`
configsinachive=`find ./Archiv -maxdepth 2 -type f -mtime -1 | wc -l`

total=`expr $fortinethostfilecount + $hphostfilecount + $ciscohostfilecount + $dellhostfilecount`
echo "------------------------------------------------" &>> ./Log/BackupCheck/log$date.txt
echo "Fortinet .. : $fortinethostfilecount Hosts in Host File" &>> ./Log/BackupCheck/log$date.txt
echo "HP ........ : $hphostfilecount Hosts in Host File" &>> ./Log/BackupCheck/log$date.txt
echo "Cisco ..... : $ciscohostfilecount Hosts in Host File" &>> ./Log/BackupCheck/log$date.txt
echo "DELL ...... : $dellhostfilecount Hosts in Host File" &>> ./Log/BackupCheck/log$date.txt
echo "------------------------------------------------" &>> ./Log/BackupCheck/log$date.txt
echo "Lines in Host file .......... : $total" &>> ./Log/BackupCheck/log$date.txt
echo "Directorys in Archiv ........ : $dirsinachriv" &>> ./Log/BackupCheck/log$date.txt
echo "Current Configs in Achive ... : $configsinachive" &>> ./Log/BackupCheck/log$date.txt
echo "------------------------------------------------" &>> ./Log/BackupCheck/log$date.txt
echo "These numbers should match!!!" &>> ./Log/BackupCheck/log$date.txt
echo "Otherwise you didn't got all configs listed in the host files" &>> ./Log/BackupCheck/log$date.txt
echo "Start Fastdebug.sh to see more infos where those errors are" &>> ./Log/BackupCheck/log$date.txt
