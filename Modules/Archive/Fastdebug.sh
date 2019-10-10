#!/bin/bash

date=$(date +%d%m%y)

echo "Backup Errors"
echo "Fortinet:"
echo "--------------------------------------------------------------------------------------------------"
join <(sort ./Devices/Fortinet/fortigateX.txt | egrep -v "^\s*(#|$)") <(sort ./Log/Fortinet/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
join <(sort ./Modules/Backup/fortigateX-special.sh | grep '#' | grep -v '#!/bin/bash' | sed 's/# //') <(sort ./Log/Fortinet/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
echo "--------------------------------------------------------------------------------------------------"
echo "Cisco:"
echo "--------------------------------------------------------------------------------------------------"
join <(sort ./Devices/Cisco/sgX00.txt | egrep -v "^\s*(#|$)") <(sort ./Log/Cisco/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
join <(sort ./Devices/Cisco/n3XXX-txt | egrep -v "^\s*(#|$)") <(sort ./Log/Cisco/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
join <(sort ./Devices/Cisco/wsc3650-txt | egrep -v "^\s*(#|$)") <(sort ./Log/Cisco/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
echo "--------------------------------------------------------------------------------------------------"
echo "DELL:"
echo "----------------------------------------------------------------------------"
join <(sort ./Devices/DELL/nXXXX-txt | egrep -v "^\s*(#|$)") <(sort ./Log/Cisco/log$date.txt | grep '\[i]:' | grep -e "Name not found" -e "not reachable" -e "backup failed" | sed -e 's/\[i]: //')
echo "----------------------------------------------------------------------------"
#echo "HP :"
#echo "----------------------------------------------------------------------------"
#cat ./Log/HP/log$date.txt | grep mv -n |  awk '{print $1}' | cut -f1 -d":"
