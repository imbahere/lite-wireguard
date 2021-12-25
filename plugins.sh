#!/bin/bash
clear
if [[ "$EUID" -ne 0 ]]; then
    echo -e "\033[1;31mScript need to be run as root!\033[0m"; exit 1
fi

if [[ ! -d /usr/local/plugins ]]; then
    mkdir /usr/local/plugins
fi

wget -q -O /usr/local/bin/menu 'https://raw.githubusercontent.com/imbahere/lite-wireguard/master/menu' && \
chmod +x /usr/local/bin/menu
