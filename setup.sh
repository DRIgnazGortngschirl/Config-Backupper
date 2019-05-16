#!/bin/bash

# SETUP

# Phase 1 create all directorys
mkdir --verbose ./Archiv
mkdir --verbose -p ./Devices/{Fortinet,HP,Cisco,DELL}
mkdir --verbose -p ./Modules/{Archiv,Backup,Checker,Clean,Debug}
mkdir --verbose ./SSH-Keys
mkdir --verbose -p ./Log/{Fortinet,HP,Cisco,DELL,BackupCheck}
echo "Directories where created"

# Phase 2 create all device list's
echo "Devices List's"
echo '# ______ ____  _____ _______ _____ _   _ ______ _______    _____             _' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#|  ____/ __ \|  __ \__   __|_   _| \ | |  ____|__   __|  |  __ \           (_)' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#| |__ | |  | | |__) | | |    | | |  \| | |__     | |     | |  | | _____   ___  ___ ___  ___' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#|  __|| |  | |  _  /  | |    | | | . ` |  __|    | |     | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#| |   | |__| | | \ \  | |   _| |_| |\  | |____   | |     | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '#|_|    \____/|_|  \_\ |_|  |_____|_| \_|______|  |_|     |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# Layout Syntax' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# ###############################' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# <IP or Domain> --> <Hostname>' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# 1.1.1.1 --> CloudFlare' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# #8.8.8.8 --> Uncommented line' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will be ignored from the BackupScript)' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo "├── Fortinet Done"
echo '# _    _ _____     _____             _' >> ./Devices/HP/HP-Devices.txt
echo '#| |  | |  __ \   |  __ \           (_)' >> ./Devices/HP/HP-Devices.txt
echo '#| |__| | |__) |  | |  | | _____   ___  ___ ___  ___' >> ./Devices/HP/HP-Devices.txt
echo '#|  __  |  ___/   | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/HP/HP-Devices.txt
echo '#| |  | | |       | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/HP/HP-Devices.txt
echo '#|_|  |_|_|       |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/HP/HP-Devices.txt
echo '# Layout Syntax' >> ./Devices/Fortinet/Fortinet-Devices.txt
echo '# ###############################' >> ./Devices/HP/HP-Devices.txt
echo '# <IP or Domain> --> <Hostname>' >> ./Devices/HP/HP-Devices.txt
echo '# 1.1.1.1 --> CloudFlare' >> ./Devices/HP/HP-Devices.txt
echo '# #8.8.8.8 --> Uncommented line' >> ./Devices/HP/HP-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will be ignored from the BackupScript)' >> ./Devices/HP/HP-Devices.txt
echo "├── HP Done"
echo '#   _____ _____  _____  _____ ____     _____             _ ' >> ./Devices/Cisco/Cisco-Devices.txt
echo '#  / ____|_   _|/ ____|/ ____/ __ \   |  __ \           (_)' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# | |      | | | (___ | |   | |  | |  | |  | | _____   ___  ___ ___  ___ ' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# | |      | |  \___ \| |   | |  | |  | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# | |____ _| |_ ____) | |___| |__| |  | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/Cisco/Cisco-Devices.txt
echo '#  \_____|_____|_____/ \_____\____/   |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# Layout Syntax' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# ###############################' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# <IP or Domain> --> <Hostname>' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# 1.1.1.1 --> CloudFlare' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# #8.8.8.8 --> Uncommented line' >> ./Devices/Cisco/Cisco-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will be ignored from the BackupScript)' >> ./Devices/Cisco/Cisco-Devices.txt
echo "├── Cisco Done"
echo '#  _____  ______ _      _         _____             _' >> ./Devices/DELL/DELL-Devices.txt
echo '# |  __ \|  ____| |    | |       |  __ \           (_)' >> ./Devices/DELL/DELL-Devices.txt
echo '# | |  | | |__  | |    | |       | |  | | _____   ___  ___ ___  ___ ' >> ./Devices/DELL/DELL-Devices.txt
echo '# | |  | |  __| | |    | |       | |  | |/ _ \ \ / / |/ __/ _ \/ __|' >> ./Devices/DELL/DELL-Devices.txt
echo '# | |__| | |____| |____| |____   | |__| |  __/\ V /| | (_|  __/\__ \' >> ./Devices/DELL/DELL-Devices.txt
echo '# |_____/|______|______|______|  |_____/ \___| \_/ |_|\___\___||___/' >> ./Devices/DELL/DELL-Devices.txt
echo '# Layout Syntax' >> ./Devices/DELL/DELL-Devices.txt
echo '# ###############################' >> ./Devices/DELL/DELL-Devices.txt
echo '# <IP or Domain> --> <Hostname>' >> ./Devices/DELL/DELL-Devices.txt
echo '# 1.1.1.1 --> CloudFlare' >> ./Devices/DELL/DELL-Devices.txt
echo '# #8.8.8.8 --> Uncommented line' >> ./Devices/DELL/DELL-Devices.txt
echo '# Use a "#" in front of a line to uncomment a line (This will be ignored from the BackupScript)' >> ./Devices/DELL/DELL-Devices.txt
echo "└── DELL Done"
echo "Devices List's where created"

# Phase 3 move all modules to ./Modules directory
mv --verbose ./Fortinet.sh ./Modules/Backup/Fortinet.sh
mv --verbose ./DELL.sh ./Modules/Backup/DELL.sh 
mv --verbose ./HP.sh ./Modules/Backup/HP.sh
mv --verbose ./Cisco.sh ./Modules/Backup/Cisco.sh
mv --verbose ./Checker.sh ./Modules/Archiv/Checker.sh
mv --verbose ./Fastdebug.sh ./Modules/Debug/Fastdebug.sh
mv --verbose ./OldConfigsMover.sh ./Modules/Archiv/OldConfigsMover.sh
mv --verbose ./ArchivStats.sh ./Modules/Archiv/ArchivStats.sh
mv --verbose ./BackupConfigsCleanUp.sh ./Modules/Clean/BackupConfigsCleanUp.sh
mv --verbose ./LogCleanUp.sh ./Modules/Clean/LogCleanUp.sh
echo "Modules where moved"

# Phase 4 create the main lanucher for all modules
installpath=`find / -name "*Automatic-config-backup-of-firewalls-and-switches" 2>/dev/null`
echo "date=`date +%d%m%y`" >> ./Main-Launcher.sh
echo "cd $installpath" >> ./Main-Launcher.sh
echo './Modules/Backup/Fortinet.sh' >> ./Main-Launcher.sh
echo './Modules/Backup/DELL.sh' >> ./Main-Launcher.sh
echo './Modules/Backup/HP.sh' >> ./Main-Launcher.sh
echo './Modules/Backup/Cisco.sh' >> ./Main-Launcher.sh
echo './Modules/Archiv/Checker.sh' >> ./Main-Launcher.sh
echo './Modules/Archiv/ArchivStats.sh' >> ./Main-Launcher.sh
echo "--------------------------------------------------------------------------------"
echo "Set days after a config gets commpressed (.gz format) [2,5x-3,5x SMALLER]" 
read achivetime
echo "--------------------------------------------------------------------------------"
echo "find ./Archiv -mtime +$achivetime -exec gzip {} +" >> ./Modules/Archiv/OldConfigsMover.sh
echo "du -sh ./Archiv >> ./Log/BackupCheck/log$date.txt" >> ./Modules/Archiv/ArchivStats.sh
echo "Main Launcher where created"

# Phase 5 make the files executable
chmod --verbose 700 ./Main-Launcher.sh
chmod --verbose 700 ./Modules/Backup/Fortinet.sh
chmod --verbose 700 ./Modules/Backup/DELL.sh
chmod --verbose 700 ./Modules/Backup/HP.sh
chmod --verbose 700 ./Modules/Backup/Cisco.sh
chmod --verbose 700 ./Modules/Archiv/Checker.sh
chmod --verbose 700 ./Modules/Debug/Fastdebug.sh
chmod --verbose 700 ./Modules/Clean/BackupConfigsCleanUp.sh
chmod --verbose 700 ./Modules/Clean/LogCleanUp.sh
chmod --verbose 700 ./Modules/Archiv/ArchivStats.sh
chmod --verbose 700 ./Modules/Archiv/OldConfigsMover.sh
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
