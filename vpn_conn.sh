#! /bin/bash


if ["$1" = "htb"]; then
    openvpn /opt/openvpn/htb.ovpn 
elif ["$1" = "thm"]; then
    openvpn /opt/openvpn/thm.ovpn
else
    echo "Unknown vpn connection."
fi