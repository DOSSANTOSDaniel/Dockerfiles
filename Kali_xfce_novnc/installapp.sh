#!/bin/bash

# Description:
#	Permet l'installation d'applications supplémentaires
#----------------------------------------------------------------#
# Usage: ./installapp.sh
#	Exécuter le script en root!
#
# Auteurs:
#  	Daniel DOS SANTOS < daniel.massy91@gmail.com >
#----------------------------------------------------------------#

### Installation

# Mise à jour
apt update 
apt full-upgrade -y

# variables
usertos="root"
versiontor=9.0.1

# Install Katoolin
git clone https://github.com/mkrupczak3/Katoolin-Robust.git
cp Katoolin-Robust/katoolin.py /usr/bin/katoolin
chmod +x /usr/bin/katoolin
rm -rf Katoolin-Robust

# Autres programmes
apt install terminator -y
apt install alsa-utils -y
apt install tree -y
apt install screen -y
apt install lynx -y

# Installation de tor
mkdir -p /root/Documents/TOR/
cd /root/Documents/TOR/
lynx -dump https://dist.torproject.org/torbrowser | sed "13 q"
# Téléchargement de tor
wget https://dist.torproject.org/torbrowser/"$versiontor"/tor-browser-linux64-"$versiontor"_fr.tar.xz   
# Extratction
tar xvf tor-browser-linux64*  
cd /root/Documents/TOR/tor-browser_fr/
# Création du raccourci
./start-tor-browser.desktop --register-app
# Bug root
if [ "$(id -u)" -eq 0 ]; then
           sed -i -e 's/-eq 0/-eq 1000/' /root/Documents/TOR/tor-browser_fr/Browser/start-tor-browser 
fi

rm -rf /root/Documents/TOR/*_fr.tar.xz

# clean
apt autoremove --purge -y
apt autoclean
