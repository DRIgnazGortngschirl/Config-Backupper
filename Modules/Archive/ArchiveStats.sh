#!/bin/bash

# Get Stats
currentsizearchive=$(du -sh ./Archive --exclude=./Archive/resources | awk '{print $1}')B
totalconfigsarchive=$(tree | grep .conf | wc -l)
totallines=$(find ./Archive -name "*.conf" -mmin -120 -exec cat {} + | wc -l)
configsinarchive=$(find ./Archive -maxdepth 2 -type f -name "*.conf" -mmin -120 | wc -l)
fortinethostfilecount=$(egrep -v "^\s*(#|$)" ./Devices/Fortinet/fortigateX.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l)
fortinetspecialhostfilecount=$(egrep -v "^\s*(#|$)" ./Modules/Backup/fortigateX-special.sh | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | sort | uniq | wc -l)
hphostfilecount=$(egrep -v "^\s*(#|$)" ./Devices/HP/HP-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l)
ciscohostfilecount=$(egrep -v "^\s*(#|$)" ./Devices/Cisco/n3XXX-txt ./Devices/Cisco/sgX00.txt ./Devices/Cisco/wsc3650-txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l)
dellhostfilecount=$(egrep -v "^\s*(#|$)" ./Devices/DELL/nXXXX.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | wc -l)
dirsinarchive=$(find ./Archive -maxdepth 1 -type d | wc -l)
minus2=2 # Caused by also counting the ./Archive and ./Archive/resources as a folder
minus1=1 # Caused by also counting the./Archive/resources/config.php as a .conf file

# Do some Quick Math 2 + 2 = 4 - 1 = 3 
avglinesinconfig=$((expr $totallines / $configsinarchive))
fortinethostfilecounttotal$((expr $fortinethostfilecount + $fortinetspecialhostfilecount))
total=$((expr $fortinethostfilecounttotal + $hphostfilecount + $ciscohostfilecount + $dellhostfilecount))
dirsinarchive=$((expr $dirsinarchive - $minus2))
totalconfigsarchive=$((expr $totalconfigsarchive - $minus1))

# Ouput Stats 
echo "------------------------------------------------"
echo "Fortinet hosts in host file .......... $fortinethostfilecount"
echo "HP hosts in host file ................ $hphostfilecount"
echo "Cisco hosts in host file ............. $ciscohostfilecount"
echo "DELL hosts in host file .............. $dellhostfilecount"
echo "Total hosts in host files ............ $total"
echo "Directories in Archiv ................ $dirsinarchive"
echo "Current Configs in Archive ........... $configsinarchive"
echo "Total configs in ./Archive ........... $totalconfigsarchive"
echo "Current size of ./Archive ............ $currentsizearchive"
echo "Total lines operating devices ........ $totallines"
echo "Average lines in conifig file ........ $avglinesinconfig"
echo "------------------------------------------------"
