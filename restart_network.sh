#!/bin/bash

while true
do
if ! [ "`ping -c 1 google.com`" ]; then #if ping exits nonzero...
   sudo service network-manager restart
   echo Networking service restarted due to no ping response from google.com
fi
sleep 30
done
