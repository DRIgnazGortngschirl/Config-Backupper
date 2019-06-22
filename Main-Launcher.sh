#!/bin/bash
date=`date +%d%m%y`
---------------------------------------------
cd PLACEHOLDERFORINSTALLATIONPATH
---------------------------------------------
./Modules/Backup/Fortinet.sh &>> ./Log/Fortinet/log$date.txt
#./Modules/Backup/Fortinet-Special.sh &>> ./Log/Fortinet/log$date.txt ### Disabled by default ###
#./Modules/Backup/DELL.sh &>> ./Log/DELL/log$date.txt ### NOT YET FUNCTIONAL! ###
#./Modules/Backup/HP.sh &>> ./Log/HP/log$date.txt ### NOT YET FUNCTIONAL! ###
#./Modules/Backup/Cisco.sh &>> ./Log/Cisco/log$date.txt ### NOT YET FUNCTIONAL! ###
---------------------------------------------
./Modules/Archive/Checker.sh &>> ./Log/Backup/log$date.txt ### Used for config copy debugging ###
./Modules/Archive/OldConfigsArchiver.sh &>> ./Log/Backup/log$date.txt ### Used for compression and deleteion of old configs ###
./Modules/Archive/OldLogsArchiver.sh &>> ./Log/Backup/log$date.txt ### Used for compression and deleteion of old logs ###
./Modules/Archive/ArchiveStats.sh &>> ./Log/Backup/log$date.txt ### Used for displaying archive stats ###
