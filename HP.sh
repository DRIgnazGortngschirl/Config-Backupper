#  _    _ _   _ _____  ______ _____     _____ ____  _   _  _____ _______ _____  _    _  _____ _______ _____ ____  _   _ 
# | |  | | \ | |  __ \|  ____|  __ \   / ____/ __ \| \ | |/ ____|__   __|  __ \| |  | |/ ____|__   __|_   _/ __ \| \ | |
# | |  | |  \| | |  | | |__  | |__) | | |   | |  | |  \| | (___    | |  | |__) | |  | | |       | |    | || |  | |  \| |
# | |  | | . ` | |  | |  __| |  _  /  | |   | |  | | . ` |\___ \   | |  |  _  /| |  | | |       | |    | || |  | | . ` |
# | |__| | |\  | |__| | |____| | \ \  | |___| |__| | |\  |____) |  | |  | | \ \| |__| | |____   | |   _| || |__| | |\  |
#  \____/|_| \_|_____/|______|_|  \_\  \_____\____/|_| \_|_____/   |_|  |_|  \_\\____/ \_____|  |_|  |_____\____/|_| \_|

# Still working on this. (NOT YET FUNCTIONAL!)

#!/bin/bash

# INSTALLATION

# 1. Create a user "backup" on the network device
# 2. Add SSH Key for Authentification for the user

user=backup

echo "Started Backup of Config's"

for device in `cat ./Devices/HP/HP-Devices.txt | egrep -v "^\s*(#|$)"` # Will have a look in the file "hp-devices.txt" for all HP devices
do

done
