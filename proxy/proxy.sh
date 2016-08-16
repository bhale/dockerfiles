#!/bin/ash
# need to wait for the user to log in to the VPN to dhcp the proper DNS before starting squid.
(sleep 20 && squid &) 
openconnect --juniper https://sslvpn.sevone.com
