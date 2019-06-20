#!/bin/bash
echo "IP Address :
echo "------------------
read device
echo "##################
echo "User :
echo "------------------
read user
echo "##################
echo "Password :
echo "------------------
read pass
echo "##################
echo "Auto Setup will start now!
### Fortinet Auto Setup BEGIN ###
sshpass -p "$pass" ssh -tt $user@$device <<EOF
  config global
    config system accprofile
      edit "read_only
        set admingrp read
        set authgrp read
        set endpoint-control-grp read
        set fwgrp read
        set loggrp read
        set mntgrp read
        set netgrp read
        set routegrp read
        set scope global
        set sysgrp read
        set updategrp read
        set utmgrp read
        set vpngrp read
        set wanoptgrp read
        set wifi read
      next
  end
  config system admin
    edit backup
      set accprofile "read_only"
      set ssh-public-key1 "PLACEHOLDERFORSSHKEY"
      next
  end
config system global
  set admin-scp enable
end
exit
EOF
### Fortinet Auto Setup END ###
