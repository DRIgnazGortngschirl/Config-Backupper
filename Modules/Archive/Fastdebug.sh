#!/bin/bash

date=`date +%d%m%y`

echo "Fortinet :"
echo "----------------------------------------------------------------------------"
join <(sort ./Devices/Fortinet/Fortinet-Devices.txt) <(sort ./Log/Fortinet/log$date.txt | grep '\[i]:' | grep -e "not reachable" -e "failed" | sed -e 's/\[i]: //')
echo "----------------------------------------------------------------------------"
echo "Cisco :"
echo "----------------------------------------------------------------------------"
join <(sort ./Devices/Cisco/Cisco-Devices.txt) <(sort ./Log/Cisco/log$date.txt | grep '\[i]:' | grep -e "not reachable" -e "failed" | sed -e 's/\[i]: //')
echo "----------------------------------------------------------------------------"
echo "DELL :"
echo "----------------------------------------------------------------------------"
# cat ./Log/Cisco/log$date.txt | grep '\[i]:' | tac | sed '/\[i]: Backup status : succeeded/I,+3 d' | tac | grep 'failed' | sed -e 's/\[i]: //' | sed -e 's/backup status :/-->/'
echo "----------------------------------------------------------------------------"
echo "HP :"
echo "----------------------------------------------------------------------------"
# cat ./Log/Cisco/log$date.txt | grep '\[i]:' | tac | sed '/\[i]: Backup status : succeeded/I,+3 d' | tac | grep 'failed' | sed -e 's/\[i]: //' | sed -e 's/backup status :/-->/'
echo "----------------------------------------------------------------------------"
echo "Check the log file from the $date for the error that occurred"
