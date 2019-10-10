#!/bin/bash

echo "[i]: Started Backup of Configs : Cisco (sgX00.sh)"

for device in $(egrep -v "^\s*(#|$)" ./Devices/Cisco/Cisco-Devices.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
 do
  echo -e "[i]: Host --> $device"
  if ping -c 3 $device &> /dev/null
   then
    echo "[i]: $device reachable"

# For: Cisco Small Business SG200 26/50 port switch
# v.0.0.1 09/29/2014
# v.0.0.2 09/30/2016

# from https://github.com/pgporada/cisco-sg200-config-retriever/blob/master/cisco-sg200-config-retriever.sh

# Show help if first argv does not exist
IP=$device
HTTPorHTTPS=HTTP # Use this to define if HTTP or HTTPS service should be used to acsses the switch. Default is HTTP

# IP=$1
# if [ -z ${IP} ]; then
#     echo "Error: IP missing on CLI"
#     echo "Usage: ./$(basename $0) xxx.xxx.xxx.xxx"
#     exit
# fi


USERNAME="cisco"
PASSWORD=XXXXXXPASSWORDXXXXXX

USERAGENT="'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'"

# Referer line
REF="'${HTTPorHTTPS}://${IP}/cs34055c2b/config/log_off_page.htm'"

INITIALCOOKIE="'cisco_numberOfEntriesPerPage=50; pg=00000000000000000000000000000000000000000000000000000000000; isStackableDevice=false; userStatus=ok; activeLangId=English; firstWelcomeBanner=false'"

# Unencrypted login line. Encrypted uses some long convoluted RSA encryption scheme written in Javascript. I tried for hours to parse it but couldn't figure it out. Maybe another set of eyes will have better luck.
LOGIN="'${HTTPorHTTPS}://${IP}/cs34055c2b/config/System.xml?action=login&user=${USERNAME}&password=${PASSWORD}&ssd=true&'"

# Get the headers for the session so we can parse the output and build our real session string
SESSION=$(eval curl -i -s -k -b ${INITIALCOOKIE} -A ${USERAGENT} -e ${REF} ${LOGIN} | grep "sessionID")

# UserID is the IP of the machine running this script
USERID=$(echo ${SESSION} | cut -d'&' -f1 | cut -d'=' -f2)
SESSIONID=$(echo ${SESSION} | cut -d'&' -f2)

# Newer cookie that gets set in the SG200 once authenticated
MYCOOKIE="'cisco_numberOfEntriesPerPage=50; pg=00000000000000000000000000000000000000000000000000000000000; isStackableDevice=false; userStatus=ok; sessionID=UserId=${USERID}&${SESSIONID}&; usernme=cisco; activeLangId=English; firstWelcomeBanner=false'"

# Set the referer line to a new value
REF="'${HTTPorHTTPS}://${IP}/cs34055c2b/FileMgmt/maintenance_file_fileUpload_m.htm'"

# The rl options here get me an http download of the running config from the switch to my machine
INDEX=$(date +%H%M%S)
DLURL="'${HTTPorHTTPS}://${IP}/cs34055c2b/FileMgmt/stupCfg.ber?rlCopyFreeHistoryIndex=${INDEX}&&rlCopyDestinationFileType=2&&rlCopyOptionsRequestedSsdAccess=3&&redirect=/device/copyfiles.xml'"

FILENAME=BackupConfigCisco

# Actually download the file
eval curl -s -k -b ${MYCOOKIE} -A ${USERAGENT} -e ${REF} ${DLURL} -o ${FILENAME}


# Check if the file got downloaded by searching the output for the redirection.
# If the redirection exists, follow the redirect
while grep -qi "This document has moved to" ${FILENAME} && ! grep -qi "log_off_page" ${FILENAME}
do
    REF=${DLURL}
    DLURL="'"$(grep "This document has moved to" ${FILENAME} | sed 's/.*<a href="\([^"]*\)".*/\1/')"'"
    eval curl -s -k -b ${MYCOOKIE} -A ${USERAGENT} -e ${REF} ${DLURL} -o ${FILENAME}
done
#| grep hostname | sed 's|["?]||g' | sed 's/hostname //'
# We were redirected to a logoff page and the output is garbage.
if grep -qi "This document has moved to" ${FILENAME}
then
    echo "[i]: (sgX00.sh) Output was trash, try again in 15 minutes."
    rm -f ${FILENAME}
else
    echo "[i]: (sgX00.sh) Saved the config for ${IP}"
fi
name=$(grep hostname ./BackupConfigCisco | sed 's|["?]||g' | sed 's/hostname //')
if [ -z "$name" ]
 then
  echo "[i]: $device Name not found"
 else
  echo "[i]: $device Name found $name"
  mkdir -v ./Archive/$name
  date=$(date +"%H-%M_%d-%m-%Y")
  mv -v ./BackupConfigCisco ./Archive/$name/$name-$date.conf
   if [ -f ./Archive/$name/$name-$date.conf ]
    then
     echo "[i]: File $name-$date.conf found"
     echo "[i]: $device backup succeeded"
    else
     echo "[i]: File $name-$date.conf not found"
     echo "[i]: $device backup failed"
    fi
   fi
   else
    echo "[i]: $device not reachable"
fi
done
