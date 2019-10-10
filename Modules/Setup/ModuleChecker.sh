#/bin/bash!

fortinetmodule=$(egrep -v "^\s*(#|$)"  Main-Launcher.sh | grep Fortinet.sh)
if [ -z "$fortinetmodule" ]
 then
  echo "[i]: Fortinet Main Module disabled"
 else
  echo "[i]: Fortinet Main Module enabled"
  fortinetsubmodulefortigateX=$(egrep -v "^\s*(#|$)" ./Modules/Backup/Fortinet/Fortinet.sh | grep fortigateX.sh)
  if [ -z "$fortinetsubmodulefortigateX" ]
   then
    echo " |--> Fortinet Sub Module fortigateX.sh disabled"
   else
    echo " |--> Fortinet Sub Module fortigateX.sh enabled"
  fi
  fortinetsubmodulefortigatexspecial=$(egrep -v "^\s*(#|$)" ./Modules/Backup/Fortinet/Fortinet.sh | grep fortigateX.sh)
  if [ -z "$fortinetsubmodulefortigatexspecial" ]
   then
    echo " |--> Fortinet Sub Module fortigateX-special.sh disabled"
   else
    echo " |--> Fortinet Sub Module fortigateX-special.sh enabled"
  fi
fi

echo ""

ciscomodule=$(egrep -v "^\s*(#|$)"  Main-Launcher.sh | grep Cisco.sh)
if [ -z "$ciscomodule" ]
 then
  echo "[i]: Cisco Main Module disabled"
 else
  echo "[i]: Cisco Main Module enabled"
  ciscosubmodulen3XXX=$(egrep -v "^\s*(#|$)" ./Modules/Backup/Cisco/Cisco.sh | grep n3XXX.sh)
  if [ -z "$ciscosubmodulen3XXX" ]
   then
     echo " |--> Cisco Sub Module n3XXX.sh disabled"
   else
    echo " |-->  Cisco Sub Module n3XXX.sh enabled" 
  fi
  ciscosubmodulesgX00=$(egrep -v "^\s*(#|$)" ./Modules/Backup/Cisco/Cisco.sh | grep sgX00.sh)
  if [ -z "$ciscosubmodulesgX00" ]
   then
     echo " |--> Cisco Sub Module sgX00.sh disabled"
   else
    echo " |--> Cisco Sub Module sgX00.sh enabled" 
  fi     
fi

echo ""

dellmodule=$(egrep -v "^\s*(#|$)" Main-Launcher.sh | grep DELL.sh)
if [ -z "$dellmodule" ]
 then   
  echo "[i]: DELL Main Module disabled"
  else
   echo "[i]: DELL Main Module enaabled"
   dellsubmodulenXXXX=$(egrep -v "^\s*(#|$)"  ./Modules/Backup/DELL/DELL.sh | grep nXXXX.sh)
   if [ -z "$dellsubmodulenXXXX" ]
    then
     echo " |--> DELL Sub Module nXXXX.sh disabled"
    else
     echo " |--> DELL Sub Module nXXXX.sh enabled"
   fi
fi
