#!/usr/bin/env fish
function myip # Get IP adresses.
    set ETH (/sbin/ifconfig eth0 | awk '/inet/ { print $2 } ' | sed -e s/addr://|  sed '/^$/d')
    set WLAN (/sbin/ifconfig wlan0 | awk '/inet/ { print $2 } ' | sed -e s/addr:// | sed '/^$/d')
    echo -e "Local eth0 IP Address:  $ETH"
    echo -e "Local wlan0 IP Address: $WLAN"
end