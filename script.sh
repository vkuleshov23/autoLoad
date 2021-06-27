Создаём скрипт: /etc/network/ip_reconnect.sh (chmod 777)

#!/bin/bash
echo "Start connectin to network
taking ip..."
while [ true ]
do
        if [[ `hostname -I` == "" ]]; then
                `ifdown eth0 && ifup eth0`
        else
                echo "Your IPv4 is `hostname -I`"
                exit 0
        fi
done
	