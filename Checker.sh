#!/bin/bash
date=`date +%d%m%y`
fortinethostfilecount=`egrep -v "^\s*(#|$)" ./Devices/Fortinet/Fortinet-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
hphostfilecount=`egrep -v "^\s*(#|$)" ./Devices/HP/HP-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
ciscohostfilecount=`egrep -v "^\s*(#|$)" ./Devices/Cisco/Cisco-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
dellhostfilecount=`egrep -v "^\s*(#|$)" ./Devices/DELL/DELL-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
dirsinachriv=`find ./Archiv -maxdepth 1 -type d | wc -l`
configsinachive=`find ./Archiv -maxdepth 2 -type f -mtime -1 | wc -l`

total=`expr $fortinethostfilecount + $hphostfilecount + $ciscohostfilecount + $dellhostfilecount`
echo "------------------------------------------------"
echo "Fortinet .. : $fortinethostfilecount Hosts in Host File"
echo "HP ........ : $hphostfilecount Hosts in Host File"
echo "Cisco ..... : $ciscohostfilecount Hosts in Host File"
echo "DELL ...... : $dellhostfilecount Hosts in Host File"
echo "------------------------------------------------"
echo "Lines in Host file .......... : $total"
echo "Directorys in Archiv ........ : $dirsinachriv"
echo "Current Configs in Achive ... : $configsinachive"
echo "------------------------------------------------"
echo "These numbers should match!!!"
echo "Otherwise you didn't got all configs listed in the host files"
echo "Start Fastdebug.sh to see more infos where those errors are"
