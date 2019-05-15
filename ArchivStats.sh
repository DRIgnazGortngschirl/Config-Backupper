#!/bin/bash
date=`date +%d%m%y`
du -sh ./Archiv/ > ./Log/BackupCheck/log$date.txt
