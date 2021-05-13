#!/bin/bash

export PATH=$PATH:$PWD
while true
do
if ! [ "`ping -c 1 google.com`" ]; then #if ping exits nonzero...
   python3 truewifi.py
   echo Networking service restarted due to no ping response from google.com
fi
sleep 1
done
