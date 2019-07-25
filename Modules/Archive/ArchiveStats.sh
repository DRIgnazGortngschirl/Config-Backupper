#!/bin/bash
date=`date +%d%m%y`
echo "Current size of ./Archive : $(du -sh ./Archive)"
echo "Current configs in ./Archive $(tree | grep .conf | wc -l)" 
