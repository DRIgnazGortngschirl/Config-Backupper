#!/bin/bash
date=`date +%d%m%y`
du -sh ./Archive >> ./Log/BackupCheck/log$date.txt
