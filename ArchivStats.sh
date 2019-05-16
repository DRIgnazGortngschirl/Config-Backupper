#!/bin/bash
date=`date +%d%m%y`
achivesize=`du -sh ./Archiv/` > ./Log/BackupCheck/log$date.txt
echo Current size : $achivesize
