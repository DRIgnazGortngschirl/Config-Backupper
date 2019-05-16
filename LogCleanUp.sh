#!/bin/bash

echo "All Logs will get deleted!"
read -p "Do you want to continue ?" -n 1 -r
echo   
if [[ $REPLY =~ ^[Y]$ ]]
then
    read -p "I will delete all Logs." -n 1 -r
echo 
if [[ $REPLY =~ ^[Y]$ ]]
then
    echo "I will DELETE now ALL Logs"
sleep 3
cd ../
find ./Log -maxdepth 1 -type f -exec rm -fv {} \;
fi
fi
