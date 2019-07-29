#!/bin/bash
date=`date +%d%m%y`

currentsizearchive=`du -sh ./Archive | awk '{print $1}'`B
totalconfigsarchive=`tree | grep .conf | wc -l`
totallines=`find ./Archive -name "*.conf" -mmin -120 -exec cat {} + | wc -l`
configsinarchive=`find ./Archive -maxdepth 2 -type f -name "*.conf" -mmin -120 | wc -l`
avglinesinconfig=`expr $totallines / $configsinarchive`

echo "Current size of ./Archive: .......... $currentsizearchive"
echo "Total configs in ./Archive: ....... $totalconfigsarchive"
echo "Total lines operating firewalls: .... $totallines"
echo "Average lines in conifig file: ...... $avglinesinconfig"
