#!/bin/bash

# SETUP
echo "[i] : Setup stared"

# Phase 4 create Main-Lanucher.sh
echo "[i] : Searching for installation path ... This can take a few moments"
installpath=`find / -name "*Config-Backupper" 2>/dev/null`
echo "Installation path : $installpath"
echo "[i] : Found installation path"
echo '#!/bin/bash'  >> ./Main-Launcher.sh
echo 'date=`date +%d%m%y`'  >> ./Main-Launcher.sh
echo "---------------------------------------------" >> ./Main-Launcher.sh
echo "cd $installpath" >> ./Main-Launcher.sh
echo "---------------------------------------------" >> ./Main-Launcher.sh
echo './Modules/Backup/Fortinet.sh &>> ./Log/Fortinet/log$date.txt' >> ./Main-Launcher.sh
echo '#./Modules/Backup/Fortinet-Special.sh &>> ./Log/Fortinet/log$date.txt ### Disabled by default ###' >> ./Main-Launcher.sh
echo '# ./Modules/Backup/DELL.sh &>> ./Log/DELL/log$date.txt ### NOT YET FUNCTIONAL! ###' >> ./Main-Launcher.sh
echo '#./Modules/Backup/HP.sh &>> ./Log/HP/log$date.txt ### NOT YET FUNCTIONAL! ###' >> ./Main-Launcher.sh
echo '#./Modules/Backup/Cisco.sh &>> ./Log/Cisco/log$date.txt ### NOT YET FUNCTIONAL! ###' >> ./Main-Launcher.sh
echo "---------------------------------------------" >> ./Main-Launcher.sh
echo './Modules/Archive/Checker.sh &>> ./Log/Backup/log$date.txt' >> ./Main-Launcher.sh
echo './Modules/Archive/OldConfigsArchiver.sh &>> ./Log/Backup/log$date.txt' >> ./Main-Launcher.sh
echo './Modules/Archive/OldLogsArchiver.sh &>> ./Log/Backup/log$date.txt'  >> ./Main-Launcher.sh
echo './Modules/Archive/ArchiveStats.sh &>> ./Log/Backup/log$date.txt' >> ./Main-Launcher.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a config gets commpressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only):"
read archivetimearchivecommpress
echo "find ./Archive -name "*.conf" -mtime +$archivetimearchivecommpress -exec gzip -v {} +" >> ./Modules/Archive/OldConfigsArchiver.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a config gets deleted (Numbers only):"
read archivetimearchivedelete
echo "find ./Archive -name "*.conf.gz" -mtime +$archivetimearchivedelete -exec rm -v {} +" >> ./Modules/Archive/OldConfigsArchiver.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a logs gets commpressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only):"
read archivetimelogscommpress
echo "find ./Log -mtime +$archivetimelogscommpress -exec gzip -v {} +" >> ./Modules/Archive/OldLogsArchiver.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a logs gets deleted (.gz format) [2,5x-3,5x SMALLER] (Numbers only):"
read archivetimelogsdelete
echo "find ./Log -mtime +$archivetimelogsdelete -exec gzip -v {} +" >> ./Modules/Archive/OldLogsArchiver.sh
echo "--------------------------------------------------------------------------------"

echo "du -sh ./Archive >> ./Log/BackupCheck/log$date.txt" >> ./Modules/Archive/ArchiveStats.sh
echo "[i] : Main Launcher where created"

# Phase 5 make the files executable
chmod --verbose 700 ./Main-Launcher.sh
chmod --verbose 700 ./Modules/Backup/Fortinet/Fortinet.sh
chmod --verbose 700 ./Modules/Backup/Fortinet/Fortinet-Special.sh
chmod --verbose 700 ./Modules/Backup/DELL/DELL.sh
chmod --verbose 700 ./Modules/Backup/HP/HP.sh
chmod --verbose 700 ./Modules/Backup/Cisco/Cisco.sh
chmod --verbose 700 ./Modules/Archive/Checker.sh
chmod --verbose 700 ./Modules/Debug/Fastdebug.sh
chmod --verbose 700 ./Modules/Clean/Configs/CleanUp.sh
chmod --verbose 700 ./Modules/Clean/Log/CleanUp.sh
chmod --verbose 700 ./Modules/Archive/ArchiveStats.sh
chmod --verbose 700 ./Modules/Archive/OldConfigs/Archiver.sh
chmod --verbose 700 ./Modules/Archive/OldLogs/Archiver.sh
chmod --verbose 700 ./Modules/Setup/Fortinet/AutoSetup.sh
echo "[i] : Modules & Lanucher where modified"

# Phase 6 create SSH Key
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

# Phase 7 show the new created Public SSH-Key
echo "-----BEGIN PUBLIC KEY-----"
echo "$(cat ./SSH-Keys/Backup-SSH-Key.pub)"
echo "-----END PUBLIC KEY-----"
echo " "

# Phase 8 configure Fortinet-AutoSetup.sh
search=PLACEHOLDERFORSSHKEY
replace=`cat ./SSH-Keys/Backup-SSH-Key.pub`
sed -i "s|${search}|${replace}|g" ./Modules/Setup/Fortinet-AutoSetup.sh
echo '[i] : Fortinet Fortinet-AutoSetup.sh where configured'

# Phase 9 show e.g. for a crontab
echo "--------------------------------------------------------------------------------"
echo "Create a crontab to run the backup every day @ 2:00 enter this line in crontab"
echo "0 2 * * * $installpath/Main-Launcher.sh"
echo "--------------------------------------------------------------------------------"

# Phase 10 remove setup.sh & .git/
rm -v .git -Rf
echo "[i] : Removed ./.git"
rm -v setup.sh
echo "[i] : Removed ./setup.sh"
echo "[i] : IT'S DONE !"
