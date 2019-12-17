#!/bin/bash

file=$1

sed -n '/config switch-controller managed-switch/,/end/ p' $file > switch-vlan-checker-temp-config

name=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | grep name | sed 's/set name //g' | sed 's/"//g' | tr -d " \t")

port1=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port1 | sed -n '/edit \"port1"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port2=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port2 | sed -n '/edit \"port2"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port3=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port3 | sed -n '/edit \"port3"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port4=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port4 | sed -n '/edit \"port4"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port5=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port5 | sed -n '/edit \"port5"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port6=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port6 | sed -n '/edit \"port6"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port7=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port7 | sed -n '/edit \"port7"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port8=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port8 | sed -n '/edit \"port8"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port9=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port9 | sed -n '/edit \"port9"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port10=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port10 | sed -n '/edit \"port10"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port11=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port11 | sed -n '/edit \"port11"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port12=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port12 | sed -n '/edit \"port12"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port13=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port13 | sed -n '/edit \"port13"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port14=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port14 | sed -n '/edit \"port14"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port15=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port15 | sed -n '/edit \"port15"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port16=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port16 | sed -n '/edit \"port16"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port17=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port17 | sed -n '/edit \"port17"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port18=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port18 | sed -n '/edit \"port18"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port19=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port19 | sed -n '/edit \"port19"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port20=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port20 | sed -n '/edit \"port20"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port21=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port21 | sed -n '/edit \"port21"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port22=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port22 | sed -n '/edit \"port22"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port23=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port23 | sed -n '/edit \"port23"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port24=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port24 | sed -n '/edit \"port24"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port25=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port25 | sed -n '/edit \"port25"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port26=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port26 | sed -n '/edit \"port26"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port27=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port27 | sed -n '/edit \"port27"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port28=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port28 | sed -n '/edit \"port28"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port29=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port29 | sed -n '/edit \"port29"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port30=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port30 | sed -n '/edit \"port30"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port31=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port31 | sed -n '/edit \"port31"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port32=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port32 | sed -n '/edit \"port32"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port33=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port33 | sed -n '/edit \"port33"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port34=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port34 | sed -n '/edit \"port34"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port35=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port35 | sed -n '/edit \"port35"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port36=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port36 | sed -n '/edit \"port36"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port37=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port37 | sed -n '/edit \"port37"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port38=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port38 | sed -n '/edit \"port38"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port39=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port39 | sed -n '/edit \"port39"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port40=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port40 | sed -n '/edit \"port40"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port41=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port41 | sed -n '/edit \"port41"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port42=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port42 | sed -n '/edit \"port42"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port43=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port43 | sed -n '/edit \"port43"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port44=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port44 | sed -n '/edit \"port44"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port45=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port45 | sed -n '/edit \"port45"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port46=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port46 | sed -n '/edit \"port46"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port47=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port47 | sed -n '/edit \"port47"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port48=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port48 | sed -n '/edit \"port48"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port49=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port49 | sed -n '/edit \"port49"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port50=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port50 | sed -n '/edit \"port50"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port51=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port51 | sed -n '/edit \"port51"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port52=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port52 | sed -n '/edit \"port52"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port53=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port53 | sed -n '/edit \"port53"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port54=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port54 | sed -n '/edit \"port54"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port55=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port55 | sed -n '/edit \"port55"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port56=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port56 | sed -n '/edit \"port56"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port57=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port57 | sed -n '/edit \"port57"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port58=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port58 | sed -n '/edit \"port58"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port59=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port59 | sed -n '/edit \"port59"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port60=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port60 | sed -n '/edit \"port60"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port61=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port61 | sed -n '/edit \"port61"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port62=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port62 | sed -n '/edit \"port62"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port63=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port63 | sed -n '/edit \"port63"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port64=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port64 | sed -n '/edit \"port64"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port65=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port65 | sed -n '/edit \"port65"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port66=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port66 | sed -n '/edit \"port66"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port67=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port67 | sed -n '/edit \"port67"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port68=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port68 | sed -n '/edit \"port68"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port69=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port69 | sed -n '/edit \"port69"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port70=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port70 | sed -n '/edit \"port70"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port71=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port71 | sed -n '/edit \"port71"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port72=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port72 | sed -n '/edit \"port72"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port73=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port73 | sed -n '/edit \"port73"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port74=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port74 | sed -n '/edit \"port74"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port75=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port75 | sed -n '/edit \"port75"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port76=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port76 | sed -n '/edit \"port76"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port77=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port77 | sed -n '/edit \"port77"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port78=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port78 | sed -n '/edit \"port78"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port79=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port79 | sed -n '/edit \"port79"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port80=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port80 | sed -n '/edit \"port80"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port81=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port81 | sed -n '/edit \"port81"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port82=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port82 | sed -n '/edit \"port82"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port83=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port83 | sed -n '/edit \"port83"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port84=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port84 | sed -n '/edit \"port84"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port85=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port85 | sed -n '/edit \"port85"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port86=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port86 | sed -n '/edit \"port86"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port87=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port87 | sed -n '/edit \"port87"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port88=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port88 | sed -n '/edit \"port88"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port89=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port89 | sed -n '/edit \"port89"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port90=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port90 | sed -n '/edit \"port90"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port91=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port91 | sed -n '/edit \"port91"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port92=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port92 | sed -n '/edit \"port92"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port93=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port93 | sed -n '/edit \"port93"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port94=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port94 | sed -n '/edit \"port94"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port95=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port95 | sed -n '/edit \"port95"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port96=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port96 | sed -n '/edit \"port96"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port97=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port97 | sed -n '/edit \"port97"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port98=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port98 | sed -n '/edit \"port98"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port99=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port99 | sed -n '/edit \"port99"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")
port100=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port100 | sed -n '/edit \"port100"/,/next/ p' | grep -e "set vlan" | sed 's/set vlan//g' | sed 's/"//g' | tr -d " \t")

portx1=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port1 | sed -n '/edit \"port1"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx2=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port2 | sed -n '/edit \"port2"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx3=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port3 | sed -n '/edit \"port3"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx4=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port4 | sed -n '/edit \"port4"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx5=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port5 | sed -n '/edit \"port5"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx6=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port6 | sed -n '/edit \"port6"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx7=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port7 | sed -n '/edit \"port7"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx8=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port8 | sed -n '/edit \"port8"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx9=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port9 | sed -n '/edit \"port9"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx10=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port10 | sed -n '/edit \"port10"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx11=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port11 | sed -n '/edit \"port11"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx12=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port12 | sed -n '/edit \"port12"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx13=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port13 | sed -n '/edit \"port13"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx14=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port14 | sed -n '/edit \"port14"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx15=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port15 | sed -n '/edit \"port15"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx16=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port16 | sed -n '/edit \"port16"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx17=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port17 | sed -n '/edit \"port17"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx18=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port18 | sed -n '/edit \"port18"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx19=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port19 | sed -n '/edit \"port19"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx20=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port20 | sed -n '/edit \"port20"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx21=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port21 | sed -n '/edit \"port21"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx22=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port22 | sed -n '/edit \"port22"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx23=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port23 | sed -n '/edit \"port23"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx24=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port24 | sed -n '/edit \"port24"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx25=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port25 | sed -n '/edit \"port25"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx26=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port26 | sed -n '/edit \"port26"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx27=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port27 | sed -n '/edit \"port27"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx28=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port28 | sed -n '/edit \"port28"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx29=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port29 | sed -n '/edit \"port29"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx30=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port30 | sed -n '/edit \"port30"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx31=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port31 | sed -n '/edit \"port31"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx32=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port32 | sed -n '/edit \"port32"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx33=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port33 | sed -n '/edit \"port33"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx34=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port34 | sed -n '/edit \"port34"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx35=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port35 | sed -n '/edit \"port35"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx36=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port36 | sed -n '/edit \"port36"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx37=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port37 | sed -n '/edit \"port37"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx38=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port38 | sed -n '/edit \"port38"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx39=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port39 | sed -n '/edit \"port39"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx40=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port40 | sed -n '/edit \"port40"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx41=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port41 | sed -n '/edit \"port41"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx42=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port42 | sed -n '/edit \"port42"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx43=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port43 | sed -n '/edit \"port43"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx44=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port44 | sed -n '/edit \"port44"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx45=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port45 | sed -n '/edit \"port45"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx46=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port46 | sed -n '/edit \"port46"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx47=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port47 | sed -n '/edit \"port47"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx48=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port48 | sed -n '/edit \"port48"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx49=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port49 | sed -n '/edit \"port49"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx50=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port50 | sed -n '/edit \"port50"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx51=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port51 | sed -n '/edit \"port51"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx52=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port52 | sed -n '/edit \"port52"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx53=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port53 | sed -n '/edit \"port53"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx54=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port54 | sed -n '/edit \"port54"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx55=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port55 | sed -n '/edit \"port55"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx56=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port56 | sed -n '/edit \"port56"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx57=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port57 | sed -n '/edit \"port57"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx58=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port58 | sed -n '/edit \"port58"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx59=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port59 | sed -n '/edit \"port59"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx60=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port60 | sed -n '/edit \"port60"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx61=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port61 | sed -n '/edit \"port61"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx62=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port62 | sed -n '/edit \"port62"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx63=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port63 | sed -n '/edit \"port63"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx64=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port64 | sed -n '/edit \"port64"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx65=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port65 | sed -n '/edit \"port65"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx66=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port66 | sed -n '/edit \"port66"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx67=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port67 | sed -n '/edit \"port67"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx68=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port68 | sed -n '/edit \"port68"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx69=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port69 | sed -n '/edit \"port69"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx70=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port70 | sed -n '/edit \"port70"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx71=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port71 | sed -n '/edit \"port71"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx72=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port72 | sed -n '/edit \"port72"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx73=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port73 | sed -n '/edit \"port73"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx74=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port74 | sed -n '/edit \"port74"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx75=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port75 | sed -n '/edit \"port75"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx76=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port76 | sed -n '/edit \"port76"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx77=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port77 | sed -n '/edit \"port77"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx78=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port78 | sed -n '/edit \"port78"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx79=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port79 | sed -n '/edit \"port79"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx80=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port80 | sed -n '/edit \"port80"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx81=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port81 | sed -n '/edit \"port81"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx82=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port82 | sed -n '/edit \"port82"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx83=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port83 | sed -n '/edit \"port83"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx84=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port84 | sed -n '/edit \"port84"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx85=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port85 | sed -n '/edit \"port85"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx86=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port86 | sed -n '/edit \"port86"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx87=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port87 | sed -n '/edit \"port87"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx88=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port88 | sed -n '/edit \"port88"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx89=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port89 | sed -n '/edit \"port89"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx90=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port90 | sed -n '/edit \"port90"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx91=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port91 | sed -n '/edit \"port91"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx92=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port92 | sed -n '/edit \"port92"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx93=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port93 | sed -n '/edit \"port93"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx94=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port94 | sed -n '/edit \"port94"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx95=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port95 | sed -n '/edit \"port95"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx96=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port96 | sed -n '/edit \"port96"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx97=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port97 | sed -n '/edit \"port97"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx98=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port98 | sed -n '/edit \"port98"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx99=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port99 | sed -n '/edit \"port99"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")
portx100=$(sed -n '/config switch-controller managed-switch/,/end/ p' switch-vlan-checker-temp-config | sed -n '/config ports/,/end/ p' | grep -A 7 -m1 port100 | sed -n '/edit \"port100"/,/next/ p' | grep -e "set allowed-vlan" | sed 's/set allowed-vlans//g' | sed 's/"//g' | tr -d " \t")

echo "Switch: ... $name"
echo "----------------------------"

if [ -z "$port1" ]; then
      echo ""
else
      echo "Port1 : $port1"
      if [ -z "$portx1" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx1"
      fi
fi
if [ -z "$port2" ]; then
      echo ""
else
      echo "Port2 : $port2"
      if [ -z "$portx2" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx2"
      fi
fi
if [ -z "$port3" ]; then
      echo ""
else
      echo "Port3 : $port3"
      if [ -z "$portx3" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx3"
      fi
fi
if [ -z "$port4" ]; then
      echo ""
else
      echo "Port4 : $port4"
      if [ -z "$portx4" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx4"
      fi
fi
if [ -z "$port5" ]; then
      echo ""
else
      echo "Port5 : $port5"
      if [ -z "$portx5" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx5"
      fi
fi
if [ -z "$port6" ]; then
      echo ""
else
      echo "Port6 : $port6"
      if [ -z "$portx6" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx6"
      fi
fi
if [ -z "$port7" ]; then
      echo ""
else
      echo "Port7 : $port7"
      if [ -z "$portx7" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx7"
      fi
fi
if [ -z "$port8" ]; then
      echo ""
else
      echo "Port8 : $port8"
      if [ -z "$portx8" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx8"
      fi
fi
if [ -z "$port9" ]; then
      echo ""
else
      echo "Port9 : $port9"
      if [ -z "$portx9" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx9"
      fi
fi
if [ -z "$port10" ]; then
      echo ""
else
      echo "Port10 : $port10"
      if [ -z "$portx10" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx10"
      fi
fi
if [ -z "$port11" ]; then
      echo ""
else
      echo "Port11 : $port11"
      if [ -z "$portx11" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx11"
      fi
fi
if [ -z "$port12" ]; then
      echo ""
else
      echo "Port12 : $port12"
      if [ -z "$portx12" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx12"
      fi
fi
if [ -z "$port13" ]; then
      echo ""
else
      echo "Port13 : $port13"
      if [ -z "$portx13" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx13"
      fi
fi
if [ -z "$port14" ]; then
      echo ""
else
      echo "Port14 : $port14"
      if [ -z "$portx14" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx14"
      fi
fi
if [ -z "$port15" ]; then
      echo ""
else
      echo "Port15 : $port15"
      if [ -z "$portx15" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx15"
      fi
fi
if [ -z "$port16" ]; then
      echo ""
else
      echo "Port16 : $port16"
      if [ -z "$portx16" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx16"
      fi
fi
if [ -z "$port17" ]; then
      echo ""
else
      echo "Port17 : $port17"
      if [ -z "$portx17" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx17"
      fi
fi
if [ -z "$port18" ]; then
      echo ""
else
      echo "Port18 : $port18"
      if [ -z "$portx18" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx18"
      fi
fi
if [ -z "$port19" ]; then
      echo ""
else
      echo "Port19 : $port19"
      if [ -z "$portx19" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx19"
      fi
fi
if [ -z "$port20" ]; then
      echo ""
else
      echo "Port20 : $port20"
      if [ -z "$portx20" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx20"
      fi
fi
if [ -z "$port21" ]; then
      echo ""
else
      echo "Port21 : $port21"
      if [ -z "$portx21" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx21"
      fi
fi
if [ -z "$port22" ]; then
      echo ""
else
      echo "Port22 : $port22"
      if [ -z "$portx22" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx22"
      fi
fi
if [ -z "$port23" ]; then
      echo ""
else
      echo "Port23 : $port23"
      if [ -z "$portx23" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx23"
      fi
fi
if [ -z "$port24" ]; then
      echo ""
else
      echo "Port24 : $port24"
      if [ -z "$portx24" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx24"
      fi
fi
if [ -z "$port25" ]; then
      echo ""
else
      echo "Port25 : $port25"
      if [ -z "$portx25" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx25"
      fi
fi
if [ -z "$port26" ]; then
      echo ""
else
      echo "Port26 : $port26"
      if [ -z "$portx26" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx26"
      fi
fi
if [ -z "$port27" ]; then
      echo ""
else
      echo "Port27 : $port27"
      if [ -z "$portx27" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx27"
      fi
fi
if [ -z "$port28" ]; then
      echo ""
else
      echo "Port28 : $port28"
      if [ -z "$portx28" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx28"
      fi
fi
if [ -z "$port29" ]; then
      echo ""
else
      echo "Port29 : $port29"
      if [ -z "$portx29" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx29"
      fi
fi
if [ -z "$port30" ]; then
      echo ""
else
      echo "Port30 : $port30"
      if [ -z "$portx30" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx30"
      fi
fi
if [ -z "$port31" ]; then
      echo ""
else
      echo "Port31 : $port31"
      if [ -z "$portx31" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx31"
      fi
fi
if [ -z "$port32" ]; then
      echo ""
else
      echo "Port32 : $port32"
      if [ -z "$portx32" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx32"
      fi
fi
if [ -z "$port33" ]; then
      echo ""
else
      echo "Port33 : $port33"
      if [ -z "$portx33" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx33"
      fi
fi
if [ -z "$port34" ]; then
      echo ""
else
      echo "Port34 : $port34"
      if [ -z "$portx34" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx34"
      fi
fi
if [ -z "$port35" ]; then
      echo ""
else
      echo "Port35 : $port35"
      if [ -z "$portx35" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx35"
      fi
fi
if [ -z "$port36" ]; then
      echo ""
else
      echo "Port36 : $port36"
      if [ -z "$portx36" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx36"
      fi
fi
if [ -z "$port37" ]; then
      echo ""
else
      echo "Port37 : $port37"
      if [ -z "$portx37" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx37"
      fi
fi
if [ -z "$port38" ]; then
      echo ""
else
      echo "Port38 : $port38"
      if [ -z "$portx38" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx38"
      fi
fi
if [ -z "$port39" ]; then
      echo ""
else
      echo "Port39 : $port39"
      if [ -z "$portx39" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx39"
      fi
fi
if [ -z "$port40" ]; then
      echo ""
else
      echo "Port40 : $port40"
      if [ -z "$portx40" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx40"
      fi
fi
if [ -z "$port41" ]; then
      echo ""
else
      echo "Port41 : $port41"
      if [ -z "$portx41" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx41"
      fi
fi
if [ -z "$port42" ]; then
      echo ""
else
      echo "Port42 : $port42"
      if [ -z "$portx42" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx42"
      fi
fi
if [ -z "$port43" ]; then
      echo ""
else
      echo "Port43 : $port43"
      if [ -z "$portx43" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx43"
      fi
fi
if [ -z "$port44" ]; then
      echo ""
else
      echo "Port44 : $port44"
      if [ -z "$portx44" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx44"
      fi
fi
if [ -z "$port45" ]; then
      echo ""
else
      echo "Port45 : $port45"
      if [ -z "$portx45" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx45"
      fi
fi
if [ -z "$port46" ]; then
      echo ""
else
      echo "Port46 : $port46"
      if [ -z "$portx46" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx46"
      fi
fi
if [ -z "$port47" ]; then
      echo ""
else
      echo "Port47 : $port47"
      if [ -z "$portx47" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx47"
      fi
fi
if [ -z "$port48" ]; then
      echo ""
else
      echo "Port48 : $port48"
      if [ -z "$portx48" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx48"
      fi
fi
if [ -z "$port49" ]; then
      echo ""
else
      echo "Port49 : $port49"
      if [ -z "$portx49" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx49"
      fi
fi
if [ -z "$port50" ]; then
      echo ""
else
      echo "Port50 : $port50"
      if [ -z "$portx50" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx50"
      fi
fi
if [ -z "$port51" ]; then
      echo ""
else
      echo "Port51 : $port51"
      if [ -z "$portx51" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx51"
      fi
fi
if [ -z "$port52" ]; then
      echo ""
else
      echo "Port52 : $port52"
      if [ -z "$portx52" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx52"
      fi
fi
if [ -z "$port53" ]; then
      echo ""
else
      echo "Port53 : $port53"
      if [ -z "$portx53" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx53"
      fi
fi
if [ -z "$port54" ]; then
      echo ""
else
      echo "Port54 : $port54"
      if [ -z "$portx54" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx54"
      fi
fi
if [ -z "$port55" ]; then
      echo ""
else
      echo "Port55 : $port55"
      if [ -z "$portx55" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx55"
      fi
fi
if [ -z "$port56" ]; then
      echo ""
else
      echo "Port56 : $port56"
      if [ -z "$portx56" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx56"
      fi
fi
if [ -z "$port57" ]; then
      echo ""
else
      echo "Port57 : $port57"
      if [ -z "$portx57" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx57"
      fi
fi
if [ -z "$port58" ]; then
      echo ""
else
      echo "Port58 : $port58"
      if [ -z "$portx58" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx58"
      fi
fi
if [ -z "$port59" ]; then
      echo ""
else
      echo "Port59 : $port59"
      if [ -z "$portx59" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx59"
      fi
fi
if [ -z "$port60" ]; then
      echo ""
else
      echo "Port60 : $port60"
      if [ -z "$portx60" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx60"
      fi
fi
if [ -z "$port61" ]; then
      echo ""
else
      echo "Port61 : $port61"
      if [ -z "$portx61" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx61"
      fi
fi
if [ -z "$port62" ]; then
      echo ""
else
      echo "Port62 : $port62"
      if [ -z "$portx62" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx62"
      fi
fi
if [ -z "$port63" ]; then
      echo ""
else
      echo "Port63 : $port63"
      if [ -z "$portx63" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx63"
      fi
fi
if [ -z "$port64" ]; then
      echo ""
else
      echo "Port64 : $port64"
      if [ -z "$portx64" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx64"
      fi
fi
if [ -z "$port65" ]; then
      echo ""
else
      echo "Port65 : $port65"
      if [ -z "$portx65" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx65"
      fi
fi
if [ -z "$port66" ]; then
      echo ""
else
      echo "Port66 : $port66"
      if [ -z "$portx66" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx66"
      fi
fi
if [ -z "$port67" ]; then
      echo ""
else
      echo "Port67 : $port67"
      if [ -z "$portx67" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx67"
      fi
fi
if [ -z "$port68" ]; then
      echo ""
else
      echo "Port68 : $port68"
      if [ -z "$portx68" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx68"
      fi
fi
if [ -z "$port69" ]; then
      echo ""
else
      echo "Port69 : $port69"
      if [ -z "$portx69" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx69"
      fi
fi
if [ -z "$port70" ]; then
      echo ""
else
      echo "Port70 : $port70"
      if [ -z "$portx70" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx70"
      fi
fi
if [ -z "$port71" ]; then
      echo ""
else
      echo "Port71 : $port71"
      if [ -z "$portx71" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx71"
      fi
fi
if [ -z "$port72" ]; then
      echo ""
else
      echo "Port72 : $port72"
      if [ -z "$portx72" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx72"
      fi
fi
if [ -z "$port73" ]; then
      echo ""
else
      echo "Port73 : $port73"
      if [ -z "$portx73" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx73"
      fi
fi
if [ -z "$port74" ]; then
      echo ""
else
      echo "Port74 : $port74"
      if [ -z "$portx74" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx74"
      fi
fi
if [ -z "$port75" ]; then
      echo ""
else
      echo "Port75 : $port75"
      if [ -z "$portx75" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx75"
      fi
fi
if [ -z "$port76" ]; then
      echo ""
else
      echo "Port76 : $port76"
      if [ -z "$portx76" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx76"
      fi
fi
if [ -z "$port77" ]; then
      echo ""
else
      echo "Port77 : $port77"
      if [ -z "$portx77" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx77"
      fi
fi
if [ -z "$port78" ]; then
      echo ""
else
      echo "Port78 : $port78"
      if [ -z "$portx78" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx78"
      fi
fi
if [ -z "$port79" ]; then
      echo ""
else
      echo "Port79 : $port79"
      if [ -z "$portx79" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx79"
      fi
fi
if [ -z "$port80" ]; then
      echo ""
else
      echo "Port80 : $port80"
      if [ -z "$portx80" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx80"
      fi
fi
if [ -z "$port81" ]; then
      echo ""
else
      echo "Port81 : $port81"
      if [ -z "$portx81" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx81"
      fi
fi
if [ -z "$port82" ]; then
      echo ""
else
      echo "Port82 : $port82"
      if [ -z "$portx82" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx82"
      fi
fi
if [ -z "$port83" ]; then
      echo ""
else
      echo "Port83 : $port83"
      if [ -z "$portx83" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx83"
      fi
fi
if [ -z "$port84" ]; then
      echo ""
else
      echo "Port84 : $port84"
      if [ -z "$portx84" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx84"
      fi
fi
if [ -z "$port85" ]; then
      echo ""
else
      echo "Port85 : $port85"
      if [ -z "$portx85" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx85"
      fi
fi
if [ -z "$port86" ]; then
      echo ""
else
      echo "Port86 : $port86"
      if [ -z "$portx86" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx86"
      fi
fi
if [ -z "$port87" ]; then
      echo ""
else
      echo "Port87 : $port87"
      if [ -z "$portx87" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx87"
      fi
fi
if [ -z "$port88" ]; then
      echo ""
else
      echo "Port88 : $port88"
      if [ -z "$portx88" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx88"
      fi
fi
if [ -z "$port89" ]; then
      echo ""
else
      echo "Port89 : $port89"
      if [ -z "$portx89" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx89"
      fi
fi
if [ -z "$port90" ]; then
      echo ""
else
      echo "Port90 : $port90"
      if [ -z "$portx90" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx90"
      fi
fi
if [ -z "$port91" ]; then
      echo ""
else
      echo "Port91 : $port91"
      if [ -z "$portx91" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx91"
      fi
fi
if [ -z "$port92" ]; then
      echo ""
else
      echo "Port92 : $port92"
      if [ -z "$portx92" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx92"
      fi
fi
if [ -z "$port93" ]; then
      echo ""
else
      echo "Port93 : $port93"
      if [ -z "$portx93" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx93"
      fi
fi
if [ -z "$port94" ]; then
      echo ""
else
      echo "Port94 : $port94"
      if [ -z "$portx94" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx94"
      fi
fi
if [ -z "$port95" ]; then
      echo ""
else
      echo "Port95 : $port95"
      if [ -z "$portx95" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx95"
      fi
fi
if [ -z "$port96" ]; then
      echo ""
else
      echo "Port96 : $port96"
      if [ -z "$portx96" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx96"
      fi
fi
if [ -z "$port97" ]; then
      echo ""
else
      echo "Port97 : $port97"
      if [ -z "$portx97" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx97"
      fi
fi
if [ -z "$port98" ]; then
      echo ""
else
      echo "Port98 : $port98"
      if [ -z "$portx98" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx98"
      fi
fi
if [ -z "$port99" ]; then
      echo ""
else
      echo "Port99 : $port99"
      if [ -z "$portx99" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx99"
      fi
fi
if [ -z "$port100" ]; then
      echo ""
else
      echo "Port100 : $port100"
      if [ -z "$portx100" ]; then
            echo ""
      else
            echo "|-- Allowed VLANS : $portx100"
      fi
fi

rm switch-vlan-checker-temp-config
