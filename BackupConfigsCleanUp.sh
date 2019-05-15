#!/bin/bash

echo "All backuped backups will get deleted!"
read -p "Do you want to continue ?" -n 1 -r
echo   
if [[ $REPLY =~ ^[Y]$ ]]
then
    read -p "I will delete all Backuped Configs. Hope you got a backup ;)" -n 1 -r
echo 
if [[ $REPLY =~ ^[Y]$ ]]
then
    echo "I will DELETE now ALL Backuped Configs."
sleep 3
cd ../
find ./Archiv -maxdepth 2 -type f -exec rm -fv {} \;
fi
fi
