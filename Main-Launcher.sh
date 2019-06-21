#!/bin/bash
date=`date +%d%m%y`
---------------------------------------------
cd PLACEHOLDERFORINSTALATIONPATH
---------------------------------------------
./Modules/Backup/Fortinet.sh &>> ./Log/Fortinet/log$date.txt
#./Modules/Backup/Fortinet-Special.sh &>> ./Log/Fortinet/log$date.txt ### Disabled by default ###
#./Modules/Backup/DELL.sh &>> ./Log/DELL/log$date.txt ### NOT YET FUNCTIONAL! ###
#./Modules/Backup/HP.sh &>> ./Log/HP/log$date.txt ### NOT YET FUNCTIONAL! ###
#./Modules/Backup/Cisco.sh &>> ./Log/Cisco/log$date.txt ### NOT YET FUNCTIONAL! ###
---------------------------------------------
./Modules/Archive/Checker.sh &>> ./Log/Backup/log$date.txt
./Modules/Archive/OldConfigsArchiver.sh &>> ./Log/Backup/log$date.txt
./Modules/Archive/OldLogsArchiver.sh &>> ./Log/Backup/log$date.txt
./Modules/Archive/ArchiveStats.sh &>> ./Log/Backup/log$date.txt
