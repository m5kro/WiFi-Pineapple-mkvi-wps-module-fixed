#!/bin/sh
#2022 - m5kro aka kraken5

[[ -f /tmp/wps.progress ]] && {
  exit 0
}

touch /tmp/wps.progress

if [ "$1" = "install" ]; then
  if [ "$2" = "internal" ]; then
     opkg update
     opkg install /pineapple/modules/wps/ipks/reaver-custom_1.6.6-5_mips_24kc.ipk
     opkg install /pineapple/modules/wps/ipks/bully_1.4-1_mips_24kc.ipk
     opkg install /pineapple/modules/wps/ipks/pixiewps-custom_1.4.2-3_mips_24kc.ipk
     opkg install libpcap
     chmod +x /pineapple/modules/wps/scripts/wps.sh

  elif [ "$2" = "sd" ]; then
     opkg update
     ln -s /sd/modules/wps /pineapple/modules/
     opkg -d sd install /sd/modules/wps/ipks/reaver-custom_1.6.6-5_mips_24kc.ipk
     opkg -d sd install /sd/modules/wps/ipks/bully_1.4-1_mips_24kc.ipk
     opkg -d sd install /sd/modules/wps/ipks/pixiewps-custom_1.4.2-3_mips_24kc.ipk
     opkg -d sd install libpcap
     chmod +x /sd/modules/wps/scripts/wps.sh

  fi
  
  if [ ! -f /usr/lib/libpcap.so ] && [ -f /usr/lib/libpcap.so.1.3 ]; then
  	ln -s /usr/lib/libpcap.so /usr/lib/libpcap.so.1.3
  fi

  touch /etc/config/wps
  echo "config wps 'module'" > /etc/config/wps

  uci set wps.module.installed=1
  uci commit wps.module.installed

elif [ "$1" = "remove" ]; then
    opkg remove reaver-custom
    opkg remove bully
    opkg remove pixiewps-custom
    rm -rf /etc/config/wps
fi

rm /tmp/wps.progress
