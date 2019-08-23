#!/bin/bash

date=$(date +%d%m%y)

echo "Backup Errors"
echo "Fortinet:"
echo "--------------------------------------------------------------------------------------------------"
join <(sort ./Devices/Fortinet/Fortinet-Devices.txt | egrep -v "^\s*(#|$)") <(sort ./Log/Fortinet/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
# join <(sort ./Modules/Backup/Fortinet-Special.sh | grep '#' | grep -v '#!/bin/bash' | sed 's/# //') <(sort ./Log/Fortinet/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
echo "--------------------------------------------------------------------------------------------------"
echo "Cisco:"
echo "--------------------------------------------------------------------------------------------------"
join <(sort ./Devices/Cisco/Cisco-Devices.txt | egrep -v "^\s*(#|$)") <(sort ./Log/Cisco/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
echo "--------------------------------------------------------------------------------------------------"
#echo "DELL :"
#echo "----------------------------------------------------------------------------"
#cat ./Log/DELL/log$date.txt | grep mv -n |  awk '{print $1}' | cut -f1 -d":"
#echo "----------------------------------------------------------------------------"
#echo "HP :"
#echo "----------------------------------------------------------------------------"
#cat ./Log/HP/log$date.txt | grep mv -n |  awk '{print $1}' | cut -f1 -d":"
