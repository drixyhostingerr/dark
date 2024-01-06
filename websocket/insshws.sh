#!/bin/bash
# Proxy For WS
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
NC='\e[0m'
echo "Installing SSH Websocket by DrixyHostinger 2020" | lolcat
echo "Progress..." | lolcat
sleep 3
cd

wget -O /usr/local/bin/ws-dropbear https://script-premium.drixy-tunnel.my.id/ods/websocket/dropbear-ws.py
wget -O /usr/local/bin/ws-stunnel https://script-premium.drixy-tunnel.my.id/ods/websocket/ws-stunnel

chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel

wget -O /etc/systemd/system/ws-dropbear.service https://script-premium.drixy-tunnel.my.id/ods/websocket/service-wsdropbear && chmod +x /etc/systemd/system/ws-dropbear.service

wget -O /etc/systemd/system/ws-stunnel.service https://script-premium.drixy-tunnel.my.id/ods/websocket/ws-stunnel.service && chmod +x /etc/systemd/system/ws-stunnel.service

systemctl daemon-reload
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

