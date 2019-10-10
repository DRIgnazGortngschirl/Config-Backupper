#!/bin/bash

echo "All backuped backups will get deleted!"
read -p "Do you want to continue ? Y/n : " -n 1 -r
echo   
if [[ $REPLY =~ ^[Y]$ ]]
    then
        read -p "I will delete all Backuped Configs. Hope you got a backup ;) Y/n : " -n 1 -r
        echo 
        if [[ $REPLY =~ ^[Y]$ ]]
            then
                echo "I will DELETE now ALL Backuped Configs."
                sleep 3
                find ./Archive ! -name 'index.php' ! -name 'DirectoryLister.php' ! -name '*js' ! -name '*css' ! -name '*.php' ! -name '*png' ! -name '*img'  ! -name 'bootstrap' ! -name 'themes'  ! -name 'resources' ! -name 'Archive' -exec rm -v  -Rf {} +
        fi
fi
