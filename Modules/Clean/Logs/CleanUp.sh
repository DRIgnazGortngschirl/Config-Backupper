#!/bin/bash

echo "All Logs will get deleted!"
read -p "Do you want to continue ? Y/n : " -n 1 -r
echo   
if [[ $REPLY =~ ^[Y]$ ]]
    then
        read -p "I will delete all Logs! Y/n : " -n 1 -r
        echo 
        if [[ $REPLY =~ ^[Y]$ ]]
            then
                echo "I will DELETE now ALL Logs!!!"
                sleep 3
                find ./Log -maxdepth 2 -type f -exec rm -fv {} \;
        fi
fi
