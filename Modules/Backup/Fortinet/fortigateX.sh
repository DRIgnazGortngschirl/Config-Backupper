#!/bin/bash
HOST=0 # Create HOST variable
packages=1
recheckpackages=3

checkinterval=10
recheckinterval=3

while true; do
    for HOST in $(cat hosts.txt | egrep -v "^\s*(#|$)"); do
        echo -e -n "Checking Host: \e[35m$HOST\e[39m"
        sleep $checkinterval
        if ping -c $packages $HOST &>/dev/null; then
            echo -e " \e[32mUP\e[39m"
        else
            echo -e " \e[33mFlapping\e[39m"
            if ping -c 3 $HOST &>/dev/null; then
                echo -e -n " \e[32mUP\e[39m"
            else
                echo -e "Checking Host: \e[35m$HOST\e[39m \e[31mDOWN\e[39m"
                date=$(date +%d-%m-%Y_%H:%M:%S)
                PING=$(ping $HOST -c 10 -W 1 | grep "packet loss" | awk '{print $6}' | sed 's/%//g')
                printf "Host : $HOST\nState : DOWN\nPercent package loss : $PING\nTime : $date" | telegram-send --stdin
                telegram-send ""
                DOWN=1
                while [ "$DOWN" -eq 1 ]; do
                    if ping -c $recheckpackages $HOST &>/dev/null; then
                        DOWN=0
                        date=$(date +%d-%m-%Y_%H:%M:%S)
                        echo -e "Host \e[35m$HOST\e[39m \e[32mUP\e[39m"
                        printf "Host : $HOST\nState : UP\nTime : $date" | telegram-send --stdin
                    else
                        sleep $checkinterval
                        DOWN=1
                        echo -e "Host \e[35m$HOST\e[39m \e[31mDOWN\e[39m"
                    fi
                done
            fi
        fi
    done
done
