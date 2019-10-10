#!/bin/bash

# SETUP
echo "[i] : Setup stared"

# Phase 1 remove ./.git
rm -v ./.git -Rf
echo "[i] : Removed ./.git"

# Phase 2 create Main-Lanucher.sh
echo "[i] : Searching for installation path ... This can take a few moments"
installpath=$(find / -name "*Config-Backupper" 2>/dev/null)
echo "Installation path : $installpath"
echo "[i] : Found installation path"
search=PLACEHOLDERFORINSTALLATIONPATH
replace=$installpath
sed -i "s|${search}|${replace}|g" ./Main-Launcher.sh
echo '[i] : Main-Launcher.sh where configured'

# Phase 3 configure old files commpress&deletion time
echo "--------------------------------------------------------------------------------"
printf "Set days after a config gets commpressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only): "
read archivetimearchivecommpress
search=PLACEHOLDERFORARCHIVETIMEARCHIVECOMMPRESS
replace=$archivetimearchivecommpress
sed -i "s|${search}|${replace}|g" ./Modules/Archive/OldConfigs/Archiver.sh
echo "--------------------------------------------------------------------------------"
printf "Set days after a config gets deleted (Numbers only): "
read archivetimearchivedelete
search=PLACEHOLDERFORARCHIVETIMEARCHIVEDELETE
replace=$archivetimearchivedelete
sed -i "s|${search}|${replace}|g" ./Modules/Archive/OldConfigs/Archiver.sh
echo "--------------------------------------------------------------------------------"
printf "Set days after a logs gets commpressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only): "
read archivetimelogscommpress
search=PLACEHOLDERFORARCHIVETIMELOGSCOMMPRESS
replace=$archivetimelogscommpress
sed -i "s|${search}|${replace}|g" ./Modules/Archive/OldLogs/Archiver.sh
echo "--------------------------------------------------------------------------------"
printf "Set days after a logs gets deleted (.gz format) [2,5x-3,5x SMALLER] (Numbers only): "
read archivetimelogsdelete
search=PLACEHOLDERFORARCHIVETIMELOGSDELETE
replace=$archivetimelogsdelete
sed -i "s|${search}|${replace}|g" ./Modules/Archive/OldLogs/Archiver.sh
echo "--------------------------------------------------------------------------------"
echo "[i] : Main Launcher where created"

# Phase 4 make the files executable
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
chmod --verbose 700 ./Modules/Setup/ModuleChecker.sh
echo "[i] : Modules & Lanucher where modified"

# Phase 5 create SSH Key
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

# Phase 6 show the new created Public SSH-Key
echo "-----BEGIN PUBLIC KEY-----"
echo "$(cat ./SSH-Keys/Backup-SSH-Key.pub)"
echo "-----END PUBLIC KEY-----"
echo " "

# Phase 7 configure Fortinet-AutoSetup.sh
search=PLACEHOLDERFORSSHKEY
replace=$(cat ./SSH-Keys/Backup-SSH-Key.pub)
sed -i "s|${search}|${replace}|g" ./Modules/Setup/Fortinet/AutoSetup.sh
echo '[i] : Fortinet Fortinet-AutoSetup.sh where configured'

# Phase 8 show e.g. for a crontab
echo "--------------------------------------------------------------------------------"
echo "Create a crontab to run the backup every day @ 2:00 enter this line in crontab"
echo "0 2 * * * $installpath/Main-Launcher.sh"
echo "--------------------------------------------------------------------------------"

# Phase 9 remove ./Log/<VENDOR>/DeleteMe files
rm -v ./Log/Cisco/DeleteMe ./Log/Backup/DeleteMe ./Log/DELL/DeleteMe ./Log/Fortinet/DeleteMe ./Log/Failed/DeleteMe ./Log/HP/DeleteMe ./SSH-Keys/DeleteMe ./Devices/Firmware-Versions/DeleteMe
echo "[i] : Removed ./Log/<VENDOR>/DeleteMe & ./SSH-Keys/ files"
rm -v ./setup.sh
echo "[i] : Removed ./setup.sh"
echo "[i] : IT'S DONE !"
