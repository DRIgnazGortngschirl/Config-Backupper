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

find ./Archiv/ -maxdepth 1 -name <CUSTOMER-NAMING-SYNTAX>* -type d -exec mv -t  ./Archiv/<CUSTOMER> {} +
find ./Archiv/ -maxdepth 1 -name <CUSTOMER-NAMING-SYNTAX>* -type d -exec mv -t  ./Archiv/<CUSTOMER> {} +
find ./Archiv/ -maxdepth 1 -name <CUSTOMER-NAMING-SYNTAX>* -type d -exec mv -t  ./Archiv/<CUSTOMER> {} +
# ...

# Add a new lne to add more sorting.
# find ./Archiv/ -name <CUSTOMER-NAMING-SYNTAX>* -type d -exec mv -t  ./Archiv/<CUSTOMER> {} +
