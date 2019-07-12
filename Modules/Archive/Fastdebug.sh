#!/bin/bash

date=`date +%d%m%y`

echo "Fortinet :"
echo "----------------------------------------------------------------------------"
cat ./Log/Fortinet/log$date.txt | grep '\[i]:' | tac | sed '/\[i]: Backup status : succeeded/I,+3 d' | tac | grep 'failed' | sed -e 's/\[i]: //' | sed -e 's/backup status :/-->/'
echo "----------------------------------------------------------------------------"
echo "Cisco :"
echo "----------------------------------------------------------------------------"
cat ./Log/Cisco/log$date.txt | grep '\[i]:' | tac | sed '/\[i]: Backup status : succeeded/I,+3 d' | tac | grep 'failed' | sed -e 's/\[i]: //' | sed -e 's/backup status :/-->/'
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
