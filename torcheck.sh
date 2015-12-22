#!/bin/sh
wget -q -N https://torstatus.blutmagie.de/ip_list_exit.php/Tor_ip_list_EXIT.csv -O log/tornode.lst
grep $1 log/tornode.lst
