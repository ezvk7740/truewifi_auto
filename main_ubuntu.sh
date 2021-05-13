#!/bin/bash

while true
      do
	  curl -Is http://www.google.com | head -1 | grep 200
	  if ! [ $? -eq 0 ]; then 
	      sudo service network-manager restart
	      sleep 10
	      sudo -H -u $USER bash -c 'export PATH=$PATH:$PWD && python3 truewifi.py'
	      echo networking service restarted
	  else
	      echo online
	  fi
	  sleep 1
done

