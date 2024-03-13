#!/bin/bash

# Ellenőrzi, hogy a /etc/os-release fájl létezik-e
if [ -f "/etc/os-release" ]; then
    # Beolvassa a disztribúció és verzió információkat a /etc/os-release fájlból
    source /etc/os-release
    
    # Ellenőrzi a disztribúció típusát
    if [ "$ID" = "ubuntu" ]; then
        echo "Ubuntu disztribúció detektálva."
        # Telepíti az Apache2 csomagot Ubuntu alatt
        sudo apt update
        sudo apt install -y apache2
    elif [ "$ID" = "centos" ]; then
        echo "CentOS disztribúció detektálva."
        # Telepíti az Apache csomagot CentOS alatt
        sudo yum install -y httpd
        sudo systemctl start httpd
        sudo systemctl enable httpd
    else
        echo "Nem támogatott disztribúció vagy nem található az /etc/os-release fájl."
        exit 1
    fi
else
    echo "/etc/os-release fájl nem található."
    exit 1
fi

# Ellenőrzi az Apache szolgáltatás állapotát
sudo systemctl status apache2 || sudo systemctl status httpd

# Kiírja a telepítés befejezését
echo "Apache telepítése kész!"
