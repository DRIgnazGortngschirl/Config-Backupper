#!/bin/bash
date=`date +%d%m%y`
du -sh ./Archive
tree | grep .conf | wc -l
