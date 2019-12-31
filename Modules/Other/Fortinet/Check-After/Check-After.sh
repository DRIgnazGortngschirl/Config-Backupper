#!/bin/bash

USER=backup

SSHPORT=22

for IP in $(sed -n '/Fortinet/,/Cisco/ p' Log/Failed/Failed.txt | grep -e "-->" | awk '{print $1}'); do
    if ping -c 3 $IP | grep "64 bytes from" &>/dev/null; then
        echo "[i]: $IP reachable"
        echo "[i]: Checking SSH Port $SSHPORT"
        timeout 3s ncat -vvv $IP $SSHPORT &>ncat-dump
        test1=$(grep "Connected to" ncat-dump)
        rm ncat-dump
        if [ -z "$test1" ]; then
            echo "[error]: Connection via SSH failed"
            echo "[debug]: Check if the SSH is working from internal if you are using a external IP check with ISP (Forward Problem?). If you are using a internal check if SSH uses the definded port --> $SSHPORT"
            echo ""
        else
            echo "[i]: Connection via SSH established"
            echo "[i]: Checking config file"
            ssh -i ./SSH-Keys/Backup-SSH-Key -tt $USER@$IP -p $SSHPORT <<EOF &>ssh-dump
      config system console
      set output standard
      end
      show 
      exit
EOF
            user=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep backup | awk '{print $3}')
            scpanabled=$(sed -n '/config system global/,/end/ p' ssh-dump | grep "admin-scp enabled" | awk '{print $3}')
            hostname=$(sed -n '/config system global/,/end/ p' ssh-dump | grep hostname | awk '{print $3}' | sed 's/"//g')
            trustedhost1=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost1 | awk '{print $3}')
            trustedhost2=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost2 | awk '{print $3}')
            trustedhost3=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost3 | awk '{print $3}')
            trustedhost4=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost4 | awk '{print $3}')
            trustedhost5=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost5 | awk '{print $3}')
            trustedhost6=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost6 | awk '{print $3}')
            trustedhost7=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost7 | awk '{print $3}')
            trustedhost8=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost8 | awk '{print $3}')
            trustedhost9=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost9 | awk '{print $3}')
            accprofile=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep accprofile | awk '{print $3}' | sed 's/"//g')
            sshkey1=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep ssh-public-key1 | awk '{print $3,$4}' | sed 's/"//g' | cut -c 1-64)
            echo "[i]: Done checking config file"
            if [ -z "$user" ]; then
                echo '[i]: User "backup" ...... found'
            else
                echo '[i]: User "backup" ...... not found'
                echo '[debug]: Create a user named "backup" with e.g. ./Modules/Setup/Fortinet/AutoSetup.sh'
            fi
            if [ -z "$scpanabled" ]; then
                echo '[i]: scp ................ enabled'
            else
                echo '[i]: scp ................ disabled'
                echo '[debug]: Enable scp with "config system global" "set admin-scp enable" and "end"'
            fi
            if [ -z "$hostname" ]; then
                echo '[i]: Hostname not found'
                echo '[debug]: Using vdoms ? The search for the hostanme will not work (Global VDOM)'
            else
                echo "[i]: Hostanme ........... $hostname"
            fi
            if [ -z "$trustedhost1" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 1 ..... $trustedhost1"
            fi
            if [ -z "$trustedhost2" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 2 ..... $trustedhost2"
            fi
            if [ -z "$trustedhost3" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 3 ..... $trustedhost3"
            fi
            if [ -z "$trustedhost4" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 4 ..... $trustedhost4"
            fi
            if [ -z "$trustedhost5" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 5 ..... $trustedhost5"
            fi
            if [ -z "$trustedhost6" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 6 ..... $trustedhost6"
            fi
            if [ -z "$trustedhost7" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 7 ..... $trustedhost7"
            fi
            if [ -z "$trustedhost8" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 8 ..... $trustedhost8"
            fi
            if [ -z "$trustedhost9" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 9 ..... $trustedhost9"
            fi
            if [ -z "$accprofile" ]; then
                printf ""
            else
                echo "[i]: Accprofile ......... $accprofile"
            fi
            if [ -z "$sshkey1" ]; then
                printf ""
            else
                echo "[i]: ssh-public-key1 .... $sshkey1..."
            fi
            # rm ssh-dump
            echo "[i]: Checking scp (backup the config)"
            scp -i ./SSH-Keys/Backup-SSH-Key backup@$IP:sys_config ./config-dump &>/dev/null
            if [ -f ./config-dump ]; then
                echo "[i]: $IP backup succeeded"
                echo ""
            else
                echo "[error]: $IP backup failed"
                echo "[debug]: Hmmmmmmm intersting?"
            fi
            rm config-dump
        fi
    else
        echo "[error]: $IP not reachable"
        echo "[debug]: The IP address is not reachable via ICMP. Check the IP ($IP) and Policies on its way to the device"
        echo "[i]: Checking SSH Port $SSHPORT"
        timeout 3s ncat -vvv $IP $SSHPORT &>ncat-dump
        test1=$(grep "Connected to" ncat-dump)
        rm ncat-dump
        if [ -z "$test1" ]; then
            echo "[error]: Connection via SSH failed"
            echo "[debug]: Check if the SSH is working from internal if you are using a external IP (Forward Problem?), If you are using a internal check if SSH uses the definded port --> $SSHPORT"
            echo ""
        else
            echo "[i]: Connection via SSH established"
            echo "[i]: Checking config file"
            ssh -i ./SSH-Keys/Backup-SSH-Key -tt $USER@$IP -p $SSHPORT <<EOF &>ssh-dump
      config system console
      set output standard
      end
      show 
      exit
EOF
            user=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep backup | awk '{print $3}')
            scpanabled=$(sed -n '/config system global/,/end/ p' ssh-dump | grep "admin-scp enabled" | awk '{print $3}')
            hostname=$(sed -n '/config system global/,/end/ p' ssh-dump | grep hostname | awk '{print $3}' | sed 's/"//g')
            trustedhost1=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost1 | awk '{print $3}')
            trustedhost2=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost2 | awk '{print $3}')
            trustedhost3=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost3 | awk '{print $3}')
            trustedhost4=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost4 | awk '{print $3}')
            trustedhost5=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost5 | awk '{print $3}')
            trustedhost6=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost6 | awk '{print $3}')
            trustedhost7=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost7 | awk '{print $3}')
            trustedhost8=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost8 | awk '{print $3}')
            trustedhost9=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep trusthost9 | awk '{print $3}')
            accprofile=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep accprofile | awk '{print $3}' | sed 's/"//g')
            sshkey1=$(sed -n '/edit "backup"/,/end/ p' ssh-dump | grep ssh-public-key1 | awk '{print $3,$4}' | sed 's/"//g' | cut -c 1-64)
            echo "[i]: Done checking config file"
            if [ -z "$user" ]; then
                echo '[i]: User "backup" ...... found'
            else
                echo '[i]: User "backup" ...... not found'
                echo '[debug]: Create a user named "backup" with e.g. ./Modules/Setup/Fortinet/AutoSetup.sh'
            fi
            if [ -z "$scpanabled" ]; then
                echo '[i]: scp ................ enabled'
            else
                echo '[i]: scp ................ disabled'
                echo '[debug]: Enable scp with "config system global" "set admin-scp enable" and "end"'
            fi
            if [ -z "$hostname" ]; then
                echo '[i]: Hostname not found'
                echo '[debug]: Using vdoms ? The search for the hostanme will not work (Global VDOM)'
            else
                echo "[i]: Hostanme ........... $hostname"
            fi
            if [ -z "$trustedhost1" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 1 ..... $trustedhost1"
            fi
            if [ -z "$trustedhost2" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 2 ..... $trustedhost2"
            fi
            if [ -z "$trustedhost3" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 3 ..... $trustedhost3"
            fi
            if [ -z "$trustedhost4" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 4 ..... $trustedhost4"
            fi
            if [ -z "$trustedhost5" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 5 ..... $trustedhost5"
            fi
            if [ -z "$trustedhost6" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 6 ..... $trustedhost6"
            fi
            if [ -z "$trustedhost7" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 7 ..... $trustedhost7"
            fi
            if [ -z "$trustedhost8" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 8 ..... $trustedhost8"
            fi
            if [ -z "$trustedhost9" ]; then
                printf ""
            else
                echo "[i]: Trusted Host 9 ..... $trustedhost9"
            fi
            if [ -z "$accprofile" ]; then
                printf ""
            else
                echo "[i]: Accprofile ......... $accprofile"
            fi
            if [ -z "$sshkey1" ]; then
                printf ""
            else
                echo "[i]: ssh-public-key1 .... $sshkey1..."
            fi
            # rm ssh-dump
            echo "[i]: Checking scp (backup the config)"
            scp -i ./SSH-Keys/Backup-SSH-Key backup@$IP:sys_config ./config-dump &>/dev/null
            if [ -f ./config-dump ]; then
                echo "[i]: $IP backup succeeded"
            else
                echo "[error]: $IP backup failed"
                echo "[debug]: Hmmmmmmm intersting?"
            fi
            rm config-dump
        fi
    fi
done
