#!/bin/bash
installpath=`find / -name "*Config-Backupper" 2>/dev/null`
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
                mkdir-v -p $webserverpath
                ln -sf $installpath $webserverpath
                echo "Open http|https://$webserverpath/index.php"
        fi
fi
