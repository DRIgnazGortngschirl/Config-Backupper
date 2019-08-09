#!/bin/bash

# SETUP
echo "[i] : Setup stared"

# Phase 1 remove ./.git
rm -v ./.git -Rf
echo "[i] : Removed ./.git"

# Phase 2 create Main-Lanucher.sh
echo "[i] : Searching for installation path ... This can take a few moments"
installpath=`find / -name "*Config-Backupper" 2>/dev/null`
echo "Installation path : $installpath"
echo "[i] : Found installation path"
search=PLACEHOLDERFORINSTALLATIONPATH
replace=$installpath
sed -i "s|${search}|${replace}|g" ./Main-Launcher.sh
echo '[i] : Main-Launcher.sh where configured'
echo "--------------------------------------------------------------------------------"
printf "Set days after a config gets commpressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only): "
read archivetimearchivecommpress
echo 'echo "[i]: Compress configs Started"' >> ./Modules/Archive/OldConfigs/Archiver.sh
echo "find ./Archive -name "*.conf" -mtime +$archivetimearchivecommpress -exec gzip -v {} +" >> ./Modules/Archive/OldConfigs/Archiver.sh
echo "--------------------------------------------------------------------------------"
printf "Set days after a config gets deleted (Numbers only): "
read archivetimearchivedelete
echo "find ./Archive -name "*.conf.gz" -mtime +$archivetimearchivedelete -exec rm -v {} +" >> ./Modules/Archive/OldConfigs/Archiver.sh
echo 'echo "[i]: Compress configs End"' >> ./Modules/Archive/OldConfigs/Archiver.sh
echo "--------------------------------------------------------------------------------"
printf "Set days after a logs gets commpressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only): "
read archivetimelogscommpress
echo 'echo "[i]: Compress logs Started"' >> ./Modules/Archive/OldLogs/Archiver.sh
echo "find ./Log -mtime +$archivetimelogscommpress -exec gzip -v {} +" >> ./Modules/Archive/OldLogs/Archiver.sh
echo "--------------------------------------------------------------------------------"
printf "Set days after a logs gets deleted (.gz format) [2,5x-3,5x SMALLER] (Numbers only): "
read archivetimelogsdelete
echo "find ./Log -mtime +$archivetimelogsdelete -exec gzip -v {} +" >> ./Modules/Archive/OldLogs/Archiver.sh
echo 'echo "[i]: Compress logs End"' >> ./Modules/Archive/OldLogs/Archiver.sh
echo "--------------------------------------------------------------------------------"
echo "[i] : Main Launcher where created"

# Phase 3 make the files executable
chmod --verbose 700 ./Main-Launcher.sh
chmod --verbose 700 ./Modules/Backup/Fortinet/Fortinet.sh
chmod --verbose 700 ./Modules/Backup/Fortinet/Fortinet-Special.sh
chmod --verbose 700 ./Modules/Backup/DELL/DELL.sh
chmod --verbose 700 ./Modules/Backup/HP/HP.sh
chmod --verbose 700 ./Modules/Backup/Cisco/Cisco.sh
chmod --verbose 700 ./Modules/Archive/Fastdebug.sh
chmod --verbose 700 ./Modules/Clean/Configs/CleanUp.sh
chmod --verbose 700 ./Modules/Clean/Logs/CleanUp.sh
chmod --verbose 700 ./Modules/Archive/ArchiveStats.sh
chmod --verbose 700 ./Modules/Archive/OldConfigs/Archiver.sh
chmod --verbose 700 ./Modules/Archive/OldLogs/Archiver.sh
chmod --verbose 700 ./Modules/Setup/Fortinet/AutoSetup.sh
chmod --verbose 700 ./Modules/Setup/WebsiteIndex.sh
chmod --verbose 700 ./Modules/FirmwareCheck/Fortinet/FirmwareChecker.sh
echo "[i] : Modules & Lanucher where modified"

# Phase 4 create SSH Key
echo "----------------------------------------"
echo '1024 bit - ONLY FOR TESTING'
echo '2048 bit - It is "secure" until 2030!'
echo "4096 bit - Will be fine"
echo "8192 bit - Are you paranoid ?"
echo "16384 bit - What are you transferring?"
echo "----------------------------------------"
printf "Enter bit lenth (Numbers only): "
read rsakeylenth
ssh-keygen -t rsa -b $rsakeylenth -f ./SSH-Keys/Backup-SSH-Key

# Phase 5 show the new created Public SSH-Key
echo "-----BEGIN PUBLIC KEY-----"
echo "$(cat ./SSH-Keys/Backup-SSH-Key.pub)"
echo "-----END PUBLIC KEY-----"
echo " "

# Phase 6 configure Fortinet-AutoSetup.sh
search=PLACEHOLDERFORSSHKEY
replace=`cat ./SSH-Keys/Backup-SSH-Key.pub`
sed -i "s|${search}|${replace}|g" ./Modules/Setup/Fortinet/AutoSetup.sh
echo '[i] : Fortinet Fortinet-AutoSetup.sh where configured'

# Phase 7 show e.g. for a crontab
echo "--------------------------------------------------------------------------------"
echo "Create a crontab to run the backup every day @ 2:00 enter this line in crontab"
echo "0 2 * * * $installpath/Main-Launcher.sh"
echo "--------------------------------------------------------------------------------"

# Phase 8 remove ./Log/<VENDOR>/DeleteMe files
rm -v ./Log/Cisco/DeleteMe ./Log/Backup/DeleteMe ./Log/DELL/DeleteMe ./Log/Fortinet/DeleteMe ./Log/Failed/DeleteMe ./Log/HP/DeleteMe ./SSH-Keys/DeleteMe ./Devices/Firmware-Versions/DeleteMe
echo "[i] : Removed ./Log/<VENDOR>/DeleteMe & ./SSH-Keys/ files"
rm -v ./setup.sh
echo "[i] : Removed ./setup.sh"
echo "[i] : IT'S DONE !"
