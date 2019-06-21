#!/bin/bash

# SETUP
echo "[i] : Setup stared"

# Phase 1 create Main-Lanucher.sh
echo "[i] : Searching for installation path ... This can take a few moments"
installpath=`find / -name "*Config-Backupper" 2>/dev/null`
echo "Installation path : $installpath"
echo "[i] : Found installation path"
echo "--------------------------------------------------------------------------------"
echo "Set days after a config gets commpressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only):"
read archivetimearchivecommpress
find ./Archive -name "*.conf" -mtime +$archivetimearchivecommpress -exec gzip -v {} +" >> ./Modules/Archive/OldConfigsArchiver.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a config gets deleted (Numbers only):"
read archivetimearchivedelete
find ./Archive -name "*.conf.gz" -mtime +$archivetimearchivedelete -exec rm -v {} +" >> ./Modules/Archive/OldConfigsArchiver.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a logs gets commpressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only):"
read archivetimelogscommpress
find ./Log -mtime +$archivetimelogscommpress -exec gzip -v {} +" >> ./Modules/Archive/OldLogsArchiver.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a logs gets deleted (.gz format) [2,5x-3,5x SMALLER] (Numbers only):"
read archivetimelogsdelete
find ./Log -mtime +$archivetimelogsdelete -exec gzip -v {} +" >> ./Modules/Archive/OldLogsArchiver.sh
echo "--------------------------------------------------------------------------------"
du -sh ./Archive >> ./Log/BackupCheck/log$date.txt" >> ./Modules/Archive/ArchiveStats.sh
[i] : Main Launcher where created"

# Phase 2 make the files executable
chmod --verbose 700 ./Main-Launcher.sh
chmod --verbose 700 ./Modules/Backup/Fortinet/Fortinet.sh
chmod --verbose 700 ./Modules/Backup/Fortinet/Fortinet-Special.sh
chmod --verbose 700 ./Modules/Backup/DELL/DELL.sh
chmod --verbose 700 ./Modules/Backup/HP/HP.sh
chmod --verbose 700 ./Modules/Backup/Cisco/Cisco.sh
chmod --verbose 700 ./Modules/Archive/Checker.sh
chmod --verbose 700 ./Modules/Archive/Fastdebug.sh
chmod --verbose 700 ./Modules/Clean/Configs/CleanUp.sh
chmod --verbose 700 ./Modules/Clean/Logs/CleanUp.sh
chmod --verbose 700 ./Modules/Archive/ArchiveStats.sh
chmod --verbose 700 ./Modules/Archive/OldConfigs/Archiver.sh
chmod --verbose 700 ./Modules/Archive/OldLogs/Archiver.sh
chmod --verbose 700 ./Modules/Setup/Fortinet/AutoSetup.sh
echo "[i] : Modules & Lanucher where modified"

# Phase 3 create SSH Key
echo "----------------------------------------"
echo '1024 bit - ONLY FOR TESTING'
echo '2048 bit - It is "secure" until 2030!'
echo "4096 bit - Will be fine"
echo "8192 bit - Are you paranoid ?"
echo "16384 bit - What are you transferring?"
echo "----------------------------------------"
echo "Enter bit lenth (Numbers only):"
read rsakeylenth
ssh-keygen -t rsa -b $rsakeylenth -f ./SSH-Keys/Backup-SSH-Key

# Phase 4 show the new created Public SSH-Key
echo "-----BEGIN PUBLIC KEY-----"
echo "$(cat ./SSH-Keys/Backup-SSH-Key.pub)"
echo "-----END PUBLIC KEY-----"
echo " "

# Phase 5 configure Fortinet-AutoSetup.sh
search=PLACEHOLDERFORSSHKEY
replace=`cat ./SSH-Keys/Backup-SSH-Key.pub`
sed -i "s|${search}|${replace}|g" ./Modules/Setup/Fortinet/AutoSetup.sh
echo '[i] : Fortinet Fortinet-AutoSetup.sh where configured'

# Phase 6 show e.g. for a crontab
echo "--------------------------------------------------------------------------------"
echo "Create a crontab to run the backup every day @ 2:00 enter this line in crontab"
echo "0 2 * * * $installpath/Main-Launcher.sh"
echo "--------------------------------------------------------------------------------"

# Phase 7 remove setup.sh & .git/
rm -v .git -Rf
echo "[i] : Removed ./.git"
rm -v setup.sh
echo "[i] : Removed ./setup.sh"
echo "[i] : IT'S DONE !"
