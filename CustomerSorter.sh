#  _    _ _   _ _____  ______ _____     _____ ____  _   _  _____ _______ _____  _    _  _____ _______ _____ ____  _   _ 
# | |  | | \ | |  __ \|  ____|  __ \   / ____/ __ \| \ | |/ ____|__   __|  __ \| |  | |/ ____|__   __|_   _/ __ \| \ | |
# | |  | |  \| | |  | | |__  | |__) | | |   | |  | |  \| | (___    | |  | |__) | |  | | |       | |    | || |  | |  \| |
# | |  | | . ` | |  | |  __| |  _  /  | |   | |  | | . ` |\___ \   | |  |  _  /| |  | | |       | |    | || |  | | . ` |
# | |__| | |\  | |__| | |____| | \ \  | |___| |__| | |\  |____) |  | |  | | \ \| |__| | |____   | |   _| || |__| | |\  |
#  \____/|_| \_|_____/|______|_|  \_\  \_____\____/|_| \_|_____/   |_|  |_|  \_\\____/ \_____|  |_|  |_____\____/|_| \_|

# Still working on this. (NOT YET FUNCTIONAL!)

#!/bin/bash
# This modul can be used as a customer sorter. 
# By default this modul is disbaled 
# Enable this moudle by remvong the "#" in the Main-Launcher.sh file.
# ------------------------------------------------------------------------
# Example :
# Company   : ITSDONE     = its
# Location  : HeadQuater  = hq
# Devie     : Firewall    = fw
# Number    : 1st         = 01
# ------------------------------------------------------------------------
# <LETTERS-FOR-CUSTOMER>-<LOCATION>-<DEVICE>-<NUMBER>.conf
# its-hq-fw-01.conf
# If you got that naming syntax use e.g. the folowing sort command
# find ./Archiv/ -name its* -type d -exec mv -t  ./Archiv/ITSDONE {} +
# ------------------------------------------------------------------------
# Befor sorting
#
# Archiv
# └── its-hq-fw-01
#     ├── its-hq-fw-01-ANYDATEANDTIME.conf
#     ├── its-hq-fw-01-ANYDATEANDTIME.conf
#     └── its-hq-fw-01-ANYDATEANDTIME.conf
# ------------------------------------------------------------------------
# After sorting
# Archiv
# └── ITSDONE
#     └── its-hq-fw-01
#         ├── its-hq-fw-01-ANYDATEANDTIME.conf
#         ├── its-hq-fw-01-ANYDATEANDTIME.conf
#         └── its-hq-fw-01-ANYDATEANDTIME.conf
# ------------------------------------------------------------------------

find ./Archiv/ -maxdepth 2 -name <CUSTOMER-NAMING-SYNTAX>* -type d -exec mv -t  ./Archiv/<CUSTOMER> {} +
find ./Archiv/ -maxdepth 2 -name <CUSTOMER-NAMING-SYNTAX>* -type d -exec mv -t  ./Archiv/<CUSTOMER> {} +
find ./Archiv/ -maxdepth 2 -name <CUSTOMER-NAMING-SYNTAX>* -type d -exec mv -t  ./Archiv/<CUSTOMER> {} +
# ...

# Add a new lne to add more sorting.
# find ./Archiv/ -name <CUSTOMER-NAMING-SYNTAX>* -type d -exec mv -t  ./Archiv/<CUSTOMER> {} +
