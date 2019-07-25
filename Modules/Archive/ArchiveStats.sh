#!/bin/bash
date=`date +%d%m%y`
du -sh ./Archive
echo "Configs in Archive $(tree | grep .conf | wc -l)" 
