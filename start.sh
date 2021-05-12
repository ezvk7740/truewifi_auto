#!/bin/bash
function clean_up 
{
	sudo kill -15 $PIDNET $PIDWIFI
	exit
}
trap clean_up SIGHUP SIGINT SIGTERM
sudo ./restart_network.sh & PIDNET=$!
./truewifi_autostart.sh & PIDWIFI=$!
wait $PIDWIFI
wait $PIDMIX

