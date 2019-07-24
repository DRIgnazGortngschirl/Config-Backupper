#!/bin/bash
date=`date +%d%m%y`
fortinethostfilecount=`egrep -v "^\s*(#|$)" ./Devices/Fortinet/Fortinet-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
hphostfilecount=`egrep -v "^\s*(#|$)" ./Devices/HP/HP-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
ciscohostfilecount=`egrep -v "^\s*(#|$)" ./Devices/Cisco/Cisco-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
dellhostfilecount=`egrep -v "^\s*(#|$)" ./Devices/DELL/DELL-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l`
dirsinarchive=`find ./Archive -maxdepth 1 -type d | wc -l`
configsinarchive=`find ./Archive -maxdepth 2 -type f -name "*.conf" -mmin -120 | wc -l`
minus2=2 # Caused by also counting the ./Archive and ./Archive/resources as a folder

total=`expr $fortinethostfilecount + $hphostfilecount + $ciscohostfilecount + $dellhostfilecount`
dirsinarchive=`expr $dirsinarchive - $minus2`

echo "------------------------------------------------"
echo "Fortinet .. : $fortinethostfilecount Hosts in Host File"
echo "HP ........ : $hphostfilecount Hosts in Host File"
echo "Cisco ..... : $ciscohostfilecount Hosts in Host File"
echo "DELL ...... : $dellhostfilecount Hosts in Host File"
echo "------------------------------------------------"
echo "Lines in Host file .......... : $total"
echo "Directorys in Archiv ........ : $dirsinarchive"
echo "Current Configs in Archive .. : $configsinarchive"
echo "------------------------------------------------"
echo "(Lines in Host file) & (Current Configs in Archive) These numbers should match!!!"
echo "Otherwise you didn't got all configs listed in the host files"
echo "Start Fastdebug.sh to see more infos where those errors are"
echo "Remidner: If you got more (Directorys in Archive) than (Lines in Host file) the could be caused by a switch over from e.g. fw-01 to fw-02"
