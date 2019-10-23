#!/bin/bash
date=$(date +%d%m%y)

# ---------------------------------------------
cd PLACEHOLDERFORINSTALLATIONPATH
# ---------------------------------------------

echo "[i]: Start of backup @ $(date +%H:%M)" >> ./Log/Backup/log$date.txt

### Backup Modules ###
# ./Modules/Backup/Fortinet/Fortinet.sh &>> ./Log/Fortinet/log$date.txt ### Only for fortigateX series working ###
# ./Modules/Backup/Fortinet/Fortinet-Special.sh &>> ./Log/Fortinet/log$date.txt ### Only for fortigateX series working ###
# ./Modules/Backup/Cisco/Cisco.sh &>> ./Log/Cisco/log$date.txt ### Only for sgx00 & n3XXX & wsc3650 series working ###
# ./Modules/Backup/DELL/DELL.sh &>> ./Log/DELL/log$date.txt ### Only for nXXXX series working ###
# ./Modules/Backup/HP/HP.sh &>> ./Log/HP/log$date.txt ### NOT YET FUNCTIONAL! ###

### Archive Compression/Debugs & Stats ###

# Compression
./Modules/Archive/OldConfigs/Archiver.sh &>> ./Log/Backup/log$date.txt ### Used for compression and deleteion of old configs ###
./Modules/Archive/OldLogs/Archiver.sh &>> ./Log/Backup/log$date.txt ### Used for compression and deleteion of old logs ###

# Debug
./Modules/Archive/Fastdebug.sh &>> ./Log/Failed/Failed-$date.txt ### Used for config copy debugging ###

# Stats
./Modules/Archive/ArchiveStats.sh &>> ./Log/Backup/log$date.txt ### Used for displaying archive and varius stats ###
# ./Modules/FirmwareCheck/Fortinet/FirmwareChecker.sh ### Used for creating lists of firmwareversions of fortigateX firewalls ###
echo "[i}: End of backup @ $(date +%H:%M)" >> ./Log/Backup/log$date.txt
