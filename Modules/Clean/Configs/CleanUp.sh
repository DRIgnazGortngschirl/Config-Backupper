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
                find ./Archive ! -name '.src' ! -name '*.js' ! -name 'kunden.json' ! -name 'main.css'  ! -name 'css'  ! -name 'js'  ! -name 'index.php'  ! -name '*json'  ! -name 'Archive' -exec rm -v  -Rf {} +
        fi
fi
