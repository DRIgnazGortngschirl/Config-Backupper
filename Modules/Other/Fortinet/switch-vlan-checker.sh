#!/bin/bash

FILE=$1
if [ -z $FILE ]; then
    echo "[error]: input file was not declared"
    echo "[i]: Use ./$(basename $0) ./Archive/<PATH TO CONFIG FILE>"
    exit
fi

./backend.sh $FILE > switch-vlan-checker-temp
sed '/^$/d' switch-vlan-checker-temp 
rm switch-vlan-checker-temp
