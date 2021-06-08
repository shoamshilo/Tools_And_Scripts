#! /bin/bash

vpn_dir "/opt/openvpn/"

cd $vpn_dir

if ["$1" = "htb"]; then
    openvpn htb.ovpn 
elif ["$1" = "thm"]; then
    openvpn thm.ovpn
else
    echo "Unknown vpn connection."
fi