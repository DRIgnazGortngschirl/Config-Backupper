#!/bin/bash

# SETUP

# Phase 1 create all directorys
echo "[i] : Setup stared"
mkdir --verbose ./Archive
mkdir --verbose -p ./Devices/{Fortinet,HP,Cisco,DELL}
mkdir --verbose -p ./Modules/{Archive,Backup,Clean,Debug}
mkdir --verbose ./SSH-Keys
mkdir --verbose -p ./Log/{Backup,Cisco,DELL,Fortinet,HP}
echo "[i] : Directories where created"

# Phase 2 create all device list's
echo "[i] : Devices List's"
echo '# ______ ____  _____ _______ _____ _   _ ______ _______    _____             _' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#|  ____/ __ \|  __ \__   __|_   _| \ | |  ____|__   __|  |  __ \           (_)' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#| |__ | |  | | |__) | | |    | | |  \| | |__     | |     | |  | | _____   ___  ___ ___  ___' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#|  __|| |  | |  _  /  | |    | | | . ` |  __|    | |     | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#| |   | |__| | | \ \  | |   _| |_| |\  | |____   | |     | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#|_|    \____/|_|  \_\ |_|  |_____|_| \_|______|  |_|     |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# Layout Syntax' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# ###############################' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# <IP> --> <Hostname> ### Comment ###' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# 1.1.1.1 --> CloudFlare-DNS ### Backup CloudFlare ###' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# #8.8.8.8 --> Google-DNS ### Uncommented line ###' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will get ignored from the backup script)' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# Hostname and Comment are optional' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# Hostname will be obtained from the backup file directly' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo "├── Fortinet Done"
echo '# _    _ _____     _____             _' >> ./Devices/HP/HP-Devices.txt
echo '#| |  | |  __ \   |  __ \           (_)' >> ./Devices/HP/HP-Devices.txt
echo '#| |__| | |__) |  | |  | | _____   ___  ___ ___  ___' >> ./Devices/HP/HP-Devices.txt
echo '#|  __  |  ___/   | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/HP/HP-Devices.txt
echo '#| |  | | |       | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/HP/HP-Devices.txt
echo '#|_|  |_|_|       |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/HP/HP-Devices.txt
echo '# Layout Syntax' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# ###############################' >> ./Devices/HP/HP-Devices.txt
echo '# <IP> --> <Hostname> ### Comment ###' >> ./Devices/HP/HP-Devices.txt
echo '# 1.1.1.1 --> CloudFlare-DNS ### Backup CloudFlare ###' >> ./Devices/HP/HP-Devices.txt
echo '# #8.8.8.8 --> Google-DNS ### Uncommented line ###' >> ./Devices/HP/HP-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will get ignored from the backup script)' >> ./Devices/HP/HP-Devices.txt
echo '# Hostname and Comment are optional' >> ./Devices/HP/HP-Devices.txt
echo '# Hostname will be obtained from the backup file directly' >> ./Devices/HP/HP-Devices.txt
echo "├── HP Done"
echo '#   _____ _____  _____  _____ ____     _____             _ ' >> ./Devices/Cisco/Cisco-Devices.txt
echo '#  / ____|_   _|/ ____|/ ____/ __ \   |  __ \           (_)' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# | |      | | | (___ | |   | |  | |  | |  | | _____   ___  ___ ___  ___ ' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# | |      | |  \___ \| |   | |  | |  | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# | |____ _| |_ ____) | |___| |__| |  | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/Cisco/Cisco-Devices.txt
echo '#  \_____|_____|_____/ \_____\____/   |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# Layout Syntax' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# ###############################' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# <IP> --> <Hostname>' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# 1.1.1.1 --> CloudFlare-DNS ### Backup CloudFlare ###' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# #8.8.8.8 --> Google-DNS ### Uncommented line ###' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will get ignored from the backup script)' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# Hostname and Comment are optional' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# Hostname will be obtained from the backup file directly' >> ./Devices/Cisco/Cisco-Devices.txt
echo "├── Cisco Done"
echo '#  _____  ______ _      _         _____             _' >> ./Devices/DELL/DELL-Devices.txt
echo '# |  __ \|  ____| |    | |       |  __ \           (_)' >> ./Devices/DELL/DELL-Devices.txt
echo '# | |  | | |__  | |    | |       | |  | | _____   ___  ___ ___  ___ ' >> ./Devices/DELL/DELL-Devices.txt
echo '# | |  | |  __| | |    | |       | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/DELL/DELL-Devices.txt
echo '# | |__| | |____| |____| |____   | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/DELL/DELL-Devices.txt
echo '# |_____/|______|______|______|  |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/DELL/DELL-Devices.txt
echo '# Layout Syntax' >> ./Devices/DELL/DELL-Devices.txt
echo '# ###############################' >> ./Devices/DELL/DELL-Devices.txt
echo '# <IP> --> <Hostname>' >> ./Devices/DELL/DELL-Devices.txt
echo '# 1.1.1.1 --> CloudFlare-DNS ### Backup CloudFlare ###' >> ./Devices/DELL/DELL-Devices.txt
echo '# #8.8.8.8 --> Google-DNS ### Uncommented line ###' >> ./Devices/DELL/DELL-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will get ignored from the backup script)' >> ./Devices/DELL/DELL-Devices.txt
echo '# Hostname and Comment are optional' >> ./Devices/DELL/DELL-Devices.txt
echo '# Hostname will be obtained from the backup file directly' >> ./Devices/DELL/DELL-Devices.txt
echo "└── DELL Done"
echo "[i] : Devices List's where created"

# Phase 3 move all modules to ./Modules directory
mv --verbose ./Fortinet.sh ./Modules/Backup/Fortinet.sh
mv --verbose ./Fortinet-Special.sh ./Modules/Backup/Fortinet-Special.sh
mv --verbose ./DELL.sh ./Modules/Backup/DELL.sh
mv --verbose ./HP.sh ./Modules/Backup/HP.sh
mv --verbose ./Cisco.sh ./Modules/Backup/Cisco.sh
mv --verbose ./Checker.sh ./Modules/Archive/Checker.sh
mv --verbose ./Fastdebug.sh ./Modules/Debug/Fastdebug.sh
mv --verbose ./OldConfigsArchiver.sh ./Modules/Archive/OldConfigsArchiver.sh
mv --verbose ./OldLogsArchiver.sh ./Modules/Archive/OldLogsArchiver.sh
mv --verbose ./ArchiveStats.sh ./Modules/Archive/ArchiveStats.sh
mv --verbose ./ConfigsCleanUp.sh ./Modules/Clean/ConfigsCleanUp.sh
mv --verbose ./LogCleanUp.sh ./Modules/Clean/LogCleanUp.sh
echo "[i] : Modules where moved"

# Phase 4 create the main lanucher for all modules
echo "[i] : Searching for installation path ... This can take a few moments"
installpath=`find / -name "*Config-Backupper" 2>/dev/null`
echo "Installation path : $installpath"
echo "[i] : Found installation path"
echo '#!/bin/bash'  >> ./Main-Launcher.sh
echo 'date=`date +%d%m%y`'  >> ./Main-Launcher.sh
echo "" >> ./Main-Launcher.sh
echo "cd $installpath" >> ./Main-Launcher.sh
echo "" >> ./Main-Launcher.sh
echo './Modules/Backup/Fortinet.sh &>> ./Log/Fortinet/log$date.txt' >> ./Main-Launcher.sh
echo '#./Modules/Backup/Fortinet-Special.sh &>> ./Log/Fortinet/log$date.txt ### Disabled by default ###' >> ./Main-Launcher.sh
echo '# ./Modules/Backup/DELL.sh &>> ./Log/DELL/log$date.txt ### NOT YET FUNCTIONAL! ###' >> ./Main-Launcher.sh
echo '#./Modules/Backup/HP.sh &>> ./Log/HP/log$date.txt ### NOT YET FUNCTIONAL! ###' >> ./Main-Launcher.sh
echo '#./Modules/Backup/Cisco.sh &>> ./Log/Cisco/log$date.txt ### NOT YET FUNCTIONAL! ###' >> ./Main-Launcher.sh
echo "" >> ./Main-Launcher.sh
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
chmod --verbose 700 ./Modules/Backup/Fortinet.sh
chmod --verbose 700 ./Modules/Backup/Fortinet-Special.sh
chmod --verbose 700 ./Modules/Backup/DELL.sh
chmod --verbose 700 ./Modules/Backup/HP.sh
chmod --verbose 700 ./Modules/Backup/Cisco.sh
chmod --verbose 700 ./Modules/Archive/Checker.sh
chmod --verbose 700 ./Modules/Debug/Fastdebug.sh
chmod --verbose 700 ./Modules/Clean/ConfigsCleanUp.sh
chmod --verbose 700 ./Modules/Clean/LogCleanUp.sh
chmod --verbose 700 ./Modules/Archive/ArchiveStats.sh
chmod --verbose 700 ./Modules/Archive/OldConfigsArchiver.sh
chmod --verbose 700 ./Modules/Archive/OldLogsArchiver.sh
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

# Phase 8 show e.g. for a crontab
echo "--------------------------------------------------------------------------------"
echo "Create a crontab to run the backup every day @ 2:00 enter this line in crontab"
echo "0 2 * * * $installpath/Main-Launcher.sh"
echo "--------------------------------------------------------------------------------"

# Phase 9 remove setup.sh & .git/
rm -v .git -Rf
echo "[i] : Removed ./.git"
rm -v setup.sh
echo "[i] : Removed ./setup.sh"
echo "[i] : IT'S DONE !"
