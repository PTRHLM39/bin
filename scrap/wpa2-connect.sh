#! /bin/bash

ip link
ip link set wls1 up
wpa_supplicant -c /etc/wpa_supplicant/my_essid.conf -i wls1
wpa_supplicant -B -c /etc/wpa_supplicant/my_essid.conf -i wls1
dhclient wls1
