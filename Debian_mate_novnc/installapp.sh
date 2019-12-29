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

# variables
debuser="toto"

# installation de simplenote
wget https://github.com/Automattic/simplenote-electron/releases/download/v1.10.0/Simplenote-linux-1.10.0-amd64.deb
apt install gconf2 -y
dpkg -i Simplenote-linux-1.10.0-amd64.deb && rm Simplenote-linux-1.10.0-amd64.deb

# Installation de Visual Studio Code
wget http://packages.microsoft.com/repos/vscode/pool/main/c/code/code_1.40.1-1573664190_amd64.deb
apt install ./code_1.40.1-1573664190_amd64.deb -y && rm code_1.40.1-1573664190_amd64.deb
code --install-extension timonwong.shellcheck

# Autres programmes
apt install nmap -y
apt install vlc -y
apt install filezilla -y
apt install filezilla-common -y
apt install gdebi -y
apt install gedit -y
apt install gparted -y
apt install diodon -y
apt install remmina -y
apt install terminator -y
apt install alsa-utils -y
apt install tree -y
apt install screen -y
apt install vim -y

# nettoyage du système
apt autoremove --purge -y
apt autoclean
