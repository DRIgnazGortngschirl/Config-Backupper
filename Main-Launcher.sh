#!/bin/bash
date=`date +%d%m%y`
# ---------------------------------------------
cd PLACEHOLDERFORINSTALLATIONPATH
# ---------------------------------------------
### Backup Modules ###
# ./Modules/Backup/Fortinet/Fortinet.sh &>> ./Log/Fortinet/log$date.txt ### FUNCTIONAL ###
# ./Modules/Backup/Fortinet/Fortinet-Special.sh &>> ./Log/Fortinet/log$date.txt ### Disabled by default FUNCTIONAL ###
# ./Modules/Backup/Cisco/Cisco.sh &>> ./Log/Cisco/log$date.txt ### Only for sgx00 series working ###
# ./Modules/Backup/DELL/DELL.sh &>> ./Log/DELL/log$date.txt ### NOT YET FUNCTIONAL! ###
# ./Modules/Backup/HP/HP.sh &>> ./Log/HP/log$date.txt ### NOT YET FUNCTIONAL! ###

### Archive Compression/Debugs & Stats ###

# Compression
./Modules/Archive/OldConfigsArchiver.sh &>> ./Log/Backup/log$date.txt ### Used for compression and deleteion of old configs ###
./Modules/Archive/OldLogsArchiver.sh &>> ./Log/Backup/log$date.txt ### Used for compression and deleteion of old logs ###

# Debug
./Modules/Archive/Fastdebug.sh &>> ./Log/Failed/Failed-$date.txt ### Used for config copy debugging ###

# Stats
./Modules/Archive/ArchiveStats.sh &>> ./Log/Backup/log$date.txt ### Used for displaying archive and varius stats ###
# ./Modules/FirmwareCheck/Fortinet/FirmwareChecker.sh &>> ./Devices/Firmware-Versions/Fortinet-Firmware-$date.txt ### Disabled by default ###
