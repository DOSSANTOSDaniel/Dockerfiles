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

# Installation de Visual Studio Code
wget http://packages.microsoft.com/repos/vscode/pool/main/c/code/code_1.40.1-1573664190_amd64.deb
apt install ./code_1.40.1-1573664190_amd64.deb -y
sleep 1
rm code_1.40.1-1573664190_amd64.deb
code --install-extension timonwong.shellcheck

# Install Katoolin
apt install git
git clone https://github.com/LionSec/katoolin.git 
cp katoolin/katoolin.py /usr/bin/katoolin
chmod +x /usr/bin/katoolin
rm -rf katoolin

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

# Autres programmes
apt install vlc -y
apt install filezilla -y
apt install filezilla-common -y
apt install gdebi -y
apt install gedit -y
apt install gparted -y
apt install diodon -y
apt install keepassx -y
apt install remmina -y
apt install terminator -y
apt install nwipe -y
apt install lynx -y
apt install alsa-utils -y
apt install synaptic -y
apt install tree -y
apt install screen -y
apt install vim -y

# clean
apt autoremove --purge -y
apt autoclean
