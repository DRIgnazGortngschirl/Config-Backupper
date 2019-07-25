#!/bin/bash
printf "IP Address : "
read device
printf "User : "
read user
echo "-------------------------"
echo "[NOTE]: You will NOT see the entered password tue to security reasons"
printf "Password: "
read -s pass
echo "-------------------------"
echo "Auto Setup will start now!"
### Fortinet Auto Setup BEGIN ###
sshpass -p "$pass" ssh -tt $user@$device <<EOF
    config system accprofile
      edit "read_only"
        set admingrp read
        set authgrp read
        set endpoint-control-grp read
        set fwgrp read
        set ftviewgrp read
        set loggrp read
        set mntgrp read
        set netgrp read
        set routegrp read
        set scope global
        set secfabgrp read
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
