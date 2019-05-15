#!/bin/bash

date=`date +%d%m%y`

echo "Fortinet :"
echo "----------------------------------------------------------------------------"
cat Log/Fortinet/log$date.txt | grep mv -n |  awk '{print $1}' | cut -f1 -d":"
echo "----------------------------------------------------------------------------"
echo "Cisco :"
echo "----------------------------------------------------------------------------"
cat Log/Cisco/log$date.txt | grep mv -n |  awk '{print $1}' | cut -f1 -d":"
echo "----------------------------------------------------------------------------"
echo "DELL :"
echo "----------------------------------------------------------------------------"
cat Log/DELL/log$date.txt | grep mv -n |  awk '{print $1}' | cut -f1 -d":"
echo "----------------------------------------------------------------------------"
echo "HP :"
echo "----------------------------------------------------------------------------"
cat Log/HP/log$date.txt | grep mv -n |  awk '{print $1}' | cut -f1 -d":"
echo "----------------------------------------------------------------------------"
echo "Have a look in the right log file at the given line/lines for the error that occurred"
