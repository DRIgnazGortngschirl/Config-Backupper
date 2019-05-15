#!/bin/bash

# SETUP

# Phase 1 create all directorys
mkdir --verbose ./Archiv
mkdir --verbose ./Devices
mkdir --verbose ./Modules
mkdir --verbose ./SSH-Keys
mkdir --verbose -p Log/{Fortinet,HP,Cisco,DELL,BackupCheck}
echo "Directories where created"

# Phase 2 create all device list's
echo "Devices List's"
echo '# ______ ____  _____ _______ _____ _   _ ______ _______    _____             _' >> ./Devices/Fortinet-Devices.txt
echo '#|  ____/ __ \|  __ \__   __|_   _| \ | |  ____|__   __|  |  __ \           (_)' >> ./Devices/Fortinet-Devices.txt
echo '#| |__ | |  | | |__) | | |    | | |  \| | |__     | |     | |  | | _____   ___  ___ ___  ___' >> ./Devices/Fortinet-Devices.txt
echo '#|  __|| |  | |  _  /  | |    | | | . ` |  __|    | |     | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/Fortinet-Devices.txt
echo '#| |   | |__| | | \ \  | |   _| |_| |\  | |____   | |     | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/Fortinet-Devices.txt
echo '#|_|    \____/|_|  \_\ |_|  |_____|_| \_|______|  |_|     |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/Fortinet-Devices.txt
echo '# Layout Syntax' >> ./Devices/Fortinet-Devices.txt
echo '# ###############################' >> ./Devices/Fortinet-Devices.txt
echo '# <IP or Domain> --> <Hostname>' >> ./Devices/Fortinet-Devices.txt
echo '# 1.1.1.1 --> CloudFlare' >> ./Devices/Fortinet-Devices.txt
echo '# #8.8.8.8 --> Uncommented line' >> ./Devices/Fortinet-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will be ignored from the BackupScript)' >> ./Devices/Fortinet-Devices.txt
echo "├── Fortinet Done"
echo '# _    _ _____     _____             _' >> ./Devices/HP-Devices.txt
echo '#| |  | |  __ \   |  __ \           (_)' >> ./Devices/HP-Devices.txt
echo '#| |__| | |__) |  | |  | | _____   ___  ___ ___  ___' >> ./Devices/HP-Devices.txt
echo '#|  __  |  ___/   | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/HP-Devices.txt
echo '#| |  | | |       | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/HP-Devices.txt
echo '#|_|  |_|_|       |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/HP-Devices.txt
echo '# Layout Syntax' >> ./Devices/Fortinet-Devices.txt
echo '# ###############################' >> ./Devices/HP-Devices.txt
echo '# <IP or Domain> --> <Hostname>' >> ./Devices/HP-Devices.txt
echo '# 1.1.1.1 --> CloudFlare' >> ./Devices/HP-Devices.txt
echo '# #8.8.8.8 --> Uncommented line' >> ./Devices/HP-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will be ignored from the BackupScript)' >> ./Devices/HP-Devices.txt
echo "├── HP Done"
echo '#   _____ _____  _____  _____ ____     _____             _ ' >> ./Devices/Cisco-Devices.txt
echo '#  / ____|_   _|/ ____|/ ____/ __ \   |  __ \           (_)' >> ./Devices/Cisco-Devices.txt
echo '# | |      | | | (___ | |   | |  | |  | |  | | _____   ___  ___ ___  ___ ' >> ./Devices/Cisco-Devices.txt
echo '# | |      | |  \___ \| |   | |  | |  | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/Cisco-Devices.txt
echo '# | |____ _| |_ ____) | |___| |__| |  | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/Cisco-Devices.txt
echo '#  \_____|_____|_____/ \_____\____/   |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/Cisco-Devices.txt
echo '# Layout Syntax' >> ./Devices/Cisco-Devices.txt
echo '# ###############################' >> ./Devices/Cisco-Devices.txt
echo '# <IP or Domain> --> <Hostname>' >> ./Devices/Cisco-Devices.txt
echo '# 1.1.1.1 --> CloudFlare' >> ./Devices/Cisco-Devices.txt
echo '# #8.8.8.8 --> Uncommented line' >> ./Devices/Cisco-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will be ignored from the BackupScript)' >> ./Devices/Cisco-Devices.txt
echo "├── Cisco Done"
echo '#  _____  ______ _      _         _____             _' >> ./Devices/DELL-Devices.txt
echo '# |  __ \|  ____| |    | |       |  __ \           (_)' >> ./Devices/DELL-Devices.txt
echo '# | |  | | |__  | |    | |       | |  | | _____   ___  ___ ___  ___ ' >> ./Devices/DELL-Devices.txt
echo '# | |  | |  __| | |    | |       | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/DELL-Devices.txt
echo '# | |__| | |____| |____| |____   | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/DELL-Devices.txt
echo '# |_____/|______|______|______|  |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/DELL-Devices.txt
echo '# Layout Syntax' >> ./Devices/DELL-Devices.txt
echo '# ###############################' >> ./Devices/DELL-Devices.txt
echo '# <IP or Domain> --> <Hostname>' >> ./Devices/DELL-Devices.txt
echo '# 1.1.1.1 --> CloudFlare' >> ./Devices/DELL-Devices.txt
echo '# #8.8.8.8 --> Uncommented line' >> ./Devices/DELL-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will be ignored from the BackupScript)' >> ./Devices/DELL-Devices.txt
echo "└── DELL Done"
echo "Devices List's where created"

# Phase 3 move all modules to ./Modules directory
mv --verbose ./Backup-Script-Fortinet.sh ./Modules/Backup-Script-Fortinet.sh
mv --verbose ./Backup-Script-Dell.sh ./Modules/Backup-Script-Dell.sh 
mv --verbose ./Backup-Script-Hp.sh ./Modules/Backup-Script-Hp.sh
mv --verbose ./Backup-Script-Cisco.sh ./Modules/Backup-Script-Cisco.sh
mv --verbose ./Checker.sh ./Modules/Checker.sh
mv --verbose ./Fastdebug.sh ./Modules/Fastdebug.sh
mv --verbose ./OldConfigsMover.sh ./Modules/OldConfigsMover.sh
mv --verbose ./ArchivStats.sh ./Modules/ArchivStats.sh
echo "Modules where moved"

# Phase 4 create the main lanucher for all modules
path=`find / -name "*Automatic-config-backup-of-firewalls-and-switches" 2>/dev/null`
echo "date=`date +%d%m%y`" >> ./Backup-Script-Module-Launcher.sh
echo "cd $path" >> ./Backup-Script-Module-Launcher.sh
echo './Modules/Backup-Script-Fortinet.sh' >> ./Backup-Script-Module-Launcher.sh
echo './Modules/Backup-Script-Dell.sh' >> ./Backup-Script-Module-Launcher.sh
echo './Modules/Backup-Script-Hp.sh' >> ./Backup-Script-Module-Launcher.sh
echo './Modules/Backup-Script-Cisco.sh' >> ./Backup-Script-Module-Launcher.sh
echo './Modules/Checker.sh' >> ./Backup-Script-Module-Launcher.sh
echo './Modules/ArchivStats.sh' >> ./Backup-Script-Module-Launcher.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a config gets commpressed (.gz format) [2,5x-3,5x SMALLER]" 
read achivetime
echo "--------------------------------------------------------------------------------"
echo "find ./Archiv -mtime +$achivetime -exec gzip {} +" >> ./Modules/OldConfigsMover.sh
echo "du -sh ./Archiv/ >> ./Log/BackupCheck/log$date.txt" >> ./Modules/ArchivStats.sh
echo "Main Launcher where created"

# Phase 5 make the files executable
chmod --verbose 700 ./Backup-Script-Module-Launcher.sh
chmod --verbose 700 ./Modules/Backup-Script-Fortinet.sh
chmod --verbose 700 ./Modules/Backup-Script-Dell.sh
chmod --verbose 700 ./Modules/Backup-Script-Hp.sh
chmod --verbose 700 ./Modules/Backup-Script-Cisco.sh
chmod --verbose 700 ./Modules/Checker.sh
chmod --verbose 700 ./Modules/Fastdebug.sh
chmod --verbose 700 ./CleanUp/BackupConfigsCleanUp.sh
chmod --verbose 700 ./CleanUp/LogCleanUp.sh
chmod --verbose 700 ./Modules/ArchivStats.sh
chmod --verbose 700 ./Modules/OldConfigsMover.sh
echo "Modules & Lanucher where modified"

# Phase 6 create SSH Key
echo "----------------------------------------"
echo '1024 bit - ONLY FOR TESTING'
echo '2048 bit - It is "secure" until 2030!'
echo "4096 bit - Will be fine"
echo "8192 bit - Are you paranoid ?"
echo "16384 bit - What are you transferring?"
echo "----------------------------------------"
echo "Enter bit lenth (only Numbers)"
read rsakeylenth
ssh-keygen -t rsa -b $rsakeylenth -f ./SSH-Keys/Backup-SSH-Key

# Phase 7 show the new created Public SSH-Key
clear
echo "-----BEGIN PUBLIC KEY-----"
echo "$(cat ./SSH-Keys/Backup-SSH-Key.pub)" | awk '{print $2,$3}'
echo "-----END PUBLIC KEY-----"
echo " "
echo "IT'S DONE !"
