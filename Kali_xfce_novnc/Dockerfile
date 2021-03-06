# Image de base
FROM kalilinux/kali-rolling
MAINTAINER Daniel DOS SANTOS <daniel.massy91@gmail.com>

# Variables
ENV debuser="toto"
# Attention mettre au moins 8 caractères
ENV debpasswd="toto2019"
ENV rootpasswd="$debpasswd"

# Mise à jour
RUN apt update \
&& apt full-upgrade -y

# Langue
RUN apt install locales -y \
&& echo "Europe/Paris" > /etc/timezone \
&& dpkg-reconfigure -f noninteractive tzdata \
&& sed -i -e 's/# en_US.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen \
&& sed -i -e 's/# de_AT.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen \
&& echo 'LANG="fr_FR.UTF-8"'>/etc/default/locale \
&& dpkg-reconfigure --frontend=noninteractive locales \
&& update-locale LANG=fr_FR.UTF-8

# Dépendances
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
&& apt install xorg -y \
&& apt install dbus-x11 -y \
&& apt install xdg-utils -y \
&& apt install menu-xdg -y \
&& apt install mime-support -y \
&& apt install desktop-file-utils -y \
&& apt install mesa-utils -y \
&& apt install psmisc -y \
&& apt install mesa-utils-extra -y \
&& apt install python-numpy -y \
&& apt install firefox-esr -y \
&& apt install iproute2 -y \
&& apt install wget -y \
&& apt install curl -y \
&& apt install vim -y \
&& apt install dialog -y \ 
&& apt install apt-utils -y \ 
&& apt install apt-file -y \
&& apt install apt-transport-https -y \
&& apt install software-properties-common -y \
&& apt install sudo -y \
&& apt install gpg-agent -y \
&& apt install build-essential -y \
&& apt install python3-distutils -y \
&& apt install python3-tk -y \
&& apt install git -y \
&& apt install inetutils-ping -y

# Autres programmes
RUN apt install terminator -y \
&& apt install alsa-utils -y \
&& apt install tree -y \
&& apt install screen -y \
&& apt install lynx -y \

# Installation de Katoolin
RUN git clone https://github.com/mkrupczak3/Katoolin-Robust.git \
&& cp Katoolin-Robust/katoolin.py /usr/bin/katoolin \
&& chmod +x /usr/bin/katoolin \
&& rm -rf Katoolin-Robust

# Installation de tor
RUN mkdir -p /root/Documents/TOR/ \
&& cd /root/Documents/TOR/ \
&& lynx -dump https://dist.torproject.org/torbrowser | sed "13 q" \
&& wget https://dist.torproject.org/torbrowser/"$versiontor"/tor-browser-linux64-"$versiontor"_fr.tar.xz \
&& tar xvf tor-browser-linux64* \
&& cd /root/Documents/TOR/tor-browser_fr/ \
&& ./start-tor-browser.desktop --register-app \
&& sed -i -e 's/-eq 0/-eq 1000/' /root/Documents/TOR/tor-browser_fr/Browser/start-tor-browser \
&& rm -rf /root/Documents/TOR/*_fr.tar.xz

# Répertoire de travail
WORKDIR /root

# Création de l'utilisateur
RUN useradd -ms /bin/bash $debuser

# Installation de xfce
RUN apt install kali-desktop-xfce -y

# Installation de vnc4server
RUN apt install vnc4server -y

# Installation de NoVNC
RUN git clone https://github.com/novnc/noVNC.git

# Partage
RUN mkdir /home/$debuser/Partage
COPY installapp.sh .
RUN chmod +x installapp.sh

# Démarrage
RUN yes $debpasswd | vncpasswd
RUN chown -R $debuser:$debuser /home/$debuser
CMD vncserver && /root/noVNC/utils/launch.sh --vnc localhost:5901

# Password
RUN yes $debpasswd | passwd $debuser \
&& yes $rootpasswd | passwd

EXPOSE 6080
EXPOSE 5901

VOLUME /home/$debuser/Partage
