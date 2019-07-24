#!/bin/bash
date=`date +%d%m%y`
# ---------------------------------------------
cd PLACEHOLDERFORINSTALLATIONPATH
# ---------------------------------------------
### Backup Modules ###
./Modules/Backup/Fortinet/Fortinet.sh &>> ./Log/Fortinet/log$date.txt
#./Modules/Backup/Fortinet/Fortinet-Special.sh &>> ./Log/Fortinet/log$date.txt ### Disabled by default ###
./Modules/Backup/Cisco/Cisco.sh &>> ./Log/Cisco/log$date.txt ### Only for sgx00 series working ###
#./Modules/Backup/DELL/DELL.sh &>> ./Log/DELL/log$date.txt ### NOT YET FUNCTIONAL! ###
#./Modules/Backup/HP/HP.sh &>> ./Log/HP/log$date.txt ### NOT YET FUNCTIONAL! ###

### Archive Compression/Stats/Debugs & Loging ###

# Compression
./Modules/Archive/OldConfigsArchiver.sh &> ./Log/Backup/log$date.txt ### Used for compression and deleteion of old configs ###
./Modules/Archive/OldLogsArchiver.sh &> ./Log/Backup/log$date.txt ### Used for compression and deleteion of old logs ###

# Stats
./Modules/Archive/ArchiveStats.sh &> ./Log/Backup/log$date.txt ### Used for displaying archive stats ###

# Debug
./Modules/Archive/Checker.sh &> ./Log/Backup/log$date.txt ### Used for config copy debugging ###
./Modules/Archive/Fastdebug.sh > ./Log/Failed/Failed-$date.txt ### Used for check failed backup attempts 

#./Modules/FirmwareCheck/Fortinet/FirmwareChecker.sh | sed $'s/<br>/\\\n/g' | sed 'N;s/\n/ /' > ./Devices/Firmware-Versions/Fortinet-Firmware-$date.txt ### Disabled by default ###

