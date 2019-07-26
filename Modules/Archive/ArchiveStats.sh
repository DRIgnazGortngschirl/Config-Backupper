#!/bin/bash
date=`date +%d%m%y`

totallines=`find ./Archive -name "*.conf" -mmin -820 -exec cat {} + | wc -l`
configsinarchive=`find ./Archive -maxdepth 2 -type f -name "*.conf" -mmin -820 | wc -l`
avglinesinconfig=`expr $totallines / $configsinarchive`
currentsizearchive=`du -sh ./Archive | awk '{print $1}'`B
totalconfigsarchive=`tree | grep .conf | wc -l`  

echo "Current size of ./Archive: .......... $currentsizearchive"                   
echo "Current configs in ./Archive: ....... $totalconfigsarchive"        
echo "Total lines operating firewalls: .... $totallines"
echo "Average lines in conifig file: ...... $avglinesinconfig"
