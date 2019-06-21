#!/bin/bash
ip=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'`
echo '[i] : Searching for installation path ... This can take a few moments'
installpath=`find / -name "*Config-Backupper" 2>/dev/null`
echo "[i] : Found installation path"
echo 'Enter your path to the webserver directory e.g. "/opt/websites/SET-NAME-FOR-SUBFOLDER"'
echo "------------------"
read webserverpath
echo "##################"
echo "WebServer path : $webserverpath"
echo "Script Path : $installpath"
echo "------------------"
read -p "Do you want to symlink these folders ? Y/n :  " -n 1 -r
echo
if [[ $REPLY =~ ^[Y]$ ]]
    then
        read -p "I will symlink these folders Y/n : " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Y]$ ]]
            then
                echo "I will symlink them now"
                sleep 3
                mkdir -v -p $webserverpath
                ln -sf $installpath $webserverpath
                subfolder=`readlink -f $webserverpath | grep -oE '[^/]+$'`
                echo "Open http|https://$ip/$subfolder/Archive/index.php"
        fi
fi
