#!/bin/bash
sudo apt update && \
sudo apt-get upgrade -y && \
sudo apt install --reinstall ca-certificates -y && \
sudo apt install whiptail -y && \
sudo ln -sf /usr/share/zoneinfo/Africa/Nairobi /etc/localtime && \
mkdir -p ~/Omd && \
cd ~/Omd && \
curl -O -L https://github.com/Muhumuza7325/OMD/raw/main/android_omd_launcher.sh && \
chmod +x android_omd_launcher.sh && \
echo 'bash ~/Omd/android_omd_launcher.sh' >> ~/.bashrc && \
bash android_omd_launcher.sh

# Delete this script after running
rm -- "$0"
